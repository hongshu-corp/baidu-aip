module Baidu::Aip
  class Client
    attr_accessor :api_key, :secret_key

    @@access_token = nil
    @@expire_time = nil

    def initialize(api_key, secret_key)
      self.api_key = api_key
      self.secret_key = secret_key
    end

    def access_token
      @@access_token
    end

    def expire_time
      @@expire_time
    end

    def access_token=(token)
      @@access_token = token
    end

    def expire_time=(time)
      @@expire_time = time
    end

  end
end
