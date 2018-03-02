require 'baidu/aip/base'

module Baidu
  module Aip
    class ImageClassify
      class Dish < Baidu::Aip::Base

        def initialize(image_in_base64, options = {})
          @image_in_base64 = image_in_base64
          @top_num = options['top_num'] || 5
          @filter_threshold = options['filter_threshold'] || 0.95
        end

        def service_url
          'https://aip.baidubce.com/rest/2.0/image-classify/v2/dish'.freeze
        end

        def post_params
          {
            :image => @image_in_base64,
            :top_num => @top_num,
            :filter_threshold => @filter_threshold
          }
        end

      end
    end
  end
end
