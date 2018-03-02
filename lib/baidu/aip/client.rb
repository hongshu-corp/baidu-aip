require 'baidu/aip/image_recognition/animal'
require 'baidu/aip/image_recognition/car'
require 'baidu/aip/image_recognition/dish'
require 'baidu/aip/image_recognition/logo'
require 'baidu/aip/image_recognition/logo_add'
require 'baidu/aip/image_recognition/logo_delete'
require 'baidu/aip/image_recognition/object'
require 'baidu/aip/image_recognition/plant'
require 'baidu/aip/tokenable'

module Baidu::Aip
  module Client
    include Tokenable

    attr_accessor :api_key, :secret_key


    # image_recognition

    def image_recognition_animal(image_in_base64, options = {})
      aip = ImageRecognition::Animal.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_car(image_in_base64, options = {})
      aip = ImageRecognition::Car.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_dish(image_in_base64, options = {})
      aip = ImageRecognition::Dish.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_logo(image_in_base64, options = {})
      aip = ImageRecognition::Logo.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_logo_add(image_in_base64, brief)
      aip = ImageRecognition::LogoAdd.new options.merge({image: image_in_base64, brief: brief})
      aip.client = self

      aip.process
    end

    def image_recognition_logo_delete(image_in_base64, cont_sign)
      aip = ImageRecognition::LogoDelete.new options.merge({image: image_in_base64, cont_sign: cont_sign})
      aip.client = self

      aip.process
    end

    def image_recognition_object(image_in_base64, options = {})
      aip = ImageRecognition::Object.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_plant(image_in_base64)
      aip = ImageRecognition::Plant.new({image: image_in_base64})
      aip.client = self

      aip.process
    end

  end
end
