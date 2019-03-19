# Baidu::Aip - unofficial

This gem is used for calling baidu aip.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu-aip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baidu-aip

## Baidu document
https://ai.baidu.com/docs

## Usage
Add file baidu-aip.rb to your initializers folder.
```ruby
Baidu::Aip.configure do |config|
  config.api_key = 'your baidu app api key'
  config.secret_key = 'your baidu app secret key'
end
```

e.g.
Baidu dish detect:
```ruby
base64 = Base64.encode64(File.open("your image path", "rb").read)

result = Baidu::Aip.image_recognition_dish base64
```

## Contributing

I will not consume all the apis, there are some issue maybe.
Welcome pr.

Hope help.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

