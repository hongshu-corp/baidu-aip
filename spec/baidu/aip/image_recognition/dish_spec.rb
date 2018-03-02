require "spec_helper"
require 'baidu/aip/post_base'
require 'ostruct'

RSpec.describe Baidu::Aip::ImageRecognition::Dish do
  let(:model) { Baidu::Aip::ImageRecognition::Dish.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq 'https://aip.baidubce.com/rest/2.0/image-classify/v2/dish' }
  end

  describe "#post_params" do
    let(:options) { {:image => 'testimage'} }
    let(:model) { Baidu::Aip::ImageRecognition::Dish.new options }

    subject { model.post_params }

    specify { expect(subject).to eq options }
  end

end
