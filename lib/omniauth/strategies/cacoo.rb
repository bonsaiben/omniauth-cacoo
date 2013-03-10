require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Cacoo < OmniAuth::Strategies::OAuth
      option :name, 'cacoo'

      option :client_options, {
        :site => 'https://cacoo.com',
        :authorize_path => '/oauth/authorize',
        :access_token_path => '/oauth/access_token',
        :request_token_path => '/oauth/request_token'
      }

      uid { raw_info['name'] }

      info do
        {
          :name   => raw_info['name'],
          :nickname => raw_info['nickname'],
          :image_url  => raw_info['imageUrl']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/api/v1/account.json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end
