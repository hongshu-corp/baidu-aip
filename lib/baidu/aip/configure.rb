module Baidu::Aip
  module Configure
    def configure
      yield self if block_given?
    end

    def api_key=(key)
      @@api_key = key
    end

    def secret_key=(secret)
      @@secret_key = secret
    end

    def api_key
      @@api_key
    end

    def secret_key
      @@secret_key
    end

  end
end
