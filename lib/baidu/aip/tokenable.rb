module Baidu
  module Aip
    module Tokenable
      @@access_token = nil
      @@expire_time = nil


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
end
