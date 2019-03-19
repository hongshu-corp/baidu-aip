require 'baidu/aip/base'

module Baidu
  module Aip
    class PostBase < Base
      def initialize(options = {})
        @options = options
      end

      def post_params
        default_options.merge @options
      end

      def default_options
        {}
      end
    end
  end
end
