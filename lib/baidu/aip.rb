require 'baidu/aip/version'
require 'baidu/aip/client'
require 'baidu/aip/configure'

module Baidu
  module Aip
    extend Configure

    def self.client
      Baidu::Aip::Client.new Baidu::Aip.api_key, Baidu::Aip.secret_key
    end

    def self.dish_detect(image_in_base64, options = {})
      client.dish_detect image_in_base64, options
    end
  end
end
