require "spec_helper"
require 'baidu/aip/base'
require 'ostruct'

RSpec.describe Baidu::Aip::ImageRecognition::Dish do
  let(:image_in_base64) { '' }
  let(:model) { Baidu::Aip::ImageRecognition::Dish.new image_in_base64 }

  describe "#service_url" do
    specify { expect(model.service_url).to eq 'https://aip.baidubce.com/rest/2.0/image-classify/v2/dish' }
  end

end
