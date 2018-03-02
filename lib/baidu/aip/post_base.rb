require 'baidu/aip/base'

module Baidu
  module Aip
    class PostBase < Base
      def initialize(options = {})
        @options = options
      end

      def post_params
        @options
      end
    end
  end
end
