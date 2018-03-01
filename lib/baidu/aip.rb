require 'baidu/aip/version'
require 'baidu/aip/client'
require 'baidu/aip/configure'

module Baidu
  module Aip
    extend Configure

    def self.default_client
      Baidu::Aip::Client.new Baidu::Aip.api_key, Baidu::Aip.secret_key
    end
  end
end
