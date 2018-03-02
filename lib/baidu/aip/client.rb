require 'baidu/aip/image_classify/dish'
require 'baidu/aip/tokenable'

module Baidu::Aip
  class Client
    include Tokenable

    attr_accessor :api_key, :secret_key

    def initialize(api_key, secret_key)
      self.api_key = api_key
      self.secret_key = secret_key
    end

    def dish_detect(image_in_base64, options = {})
      aip = ImageClassify::Dish.new(image_in_base64, options)
      aip.client = self

      aip.process
    end

  end
end
