module Baidu::Aip
  class Client
    attr_accessor :api_key, :secret_key

    def initialize(api_key, secret_key)
      self.api_key = api_key
      self.secret_key = secret_key
    end

  end
end
