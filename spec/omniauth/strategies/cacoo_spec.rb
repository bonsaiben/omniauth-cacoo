require 'spec_helper'

describe OmniAuth::Strategies::Cacoo do
  subject do
    OmniAuth::Strategies::Cacoo.new({})
  end

  context 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('cacoo')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://cacoo.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_path).to eq('/oauth/authorize')
    end

    it 'should have correct access token url' do
      expect(subject.options.client_options.access_token_path).to eq('/oauth/access_token')
    end

    it 'should have correct request token url' do
      expect(subject.options.client_options.request_token_path).to eq('/oauth/request_token')
    end
  end
end
