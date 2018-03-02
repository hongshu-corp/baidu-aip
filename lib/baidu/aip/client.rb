require 'baidu/aip/image_recognition/dish'
require 'baidu/aip/tokenable'

module Baidu::Aip
  module Client
    include Tokenable

    attr_accessor :api_key, :secret_key

    def image_recognition_dish(image_in_base64, options = {})
      aip = ImageRecognition::Dish.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

  end
end
