# OmniAuth Cacoo

[Build Status](https://secure.travis-ci.org/bonsaiben/omniauth-cacoo.png)](http://travis-ci.org/bonsaiben/omniauth-cacoo)

`OmniAuth::Strategies::Cacoo` is an OmniAuth strategy for authenticating to
cacoo.com with OAuth1.

## Installing

Add to your `Gemfile`:

```ruby
    gem 'omniauth-cacoo'
```

Then `bundle install`.

## Usage

To get started you will need to register an OAuth Consumer in your
cacoo.com account
[here](https://cacoo.com/profile/apps)

Here's a quick example, adding the middleware to a Rails app in
`config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cacoo, ENV['CACOO_KEY'], ENV['CACOO_SECRET']
end
```
You can then implement your authentication as usual with OmniAuth as
shown in the excellent [Railscast
241](http://railscasts.com/episodes/241-simple-omniauth)

## License

Copyright (c) 2013 by Benjamin Sullivan

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
