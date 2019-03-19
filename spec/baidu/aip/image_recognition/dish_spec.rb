require 'spec_helper'

RSpec.describe Baidu::Aip::ImageRecognition::Dish, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::IMAGE_RECOGNITION_DISH }
  end

  describe "#post_params" do
    let(:options) { {:image => 'testimage'} }
    let(:model) { Baidu::Aip::ImageRecognition::Dish.new options }

    subject { model.post_params }

    specify { expect(subject).to eq options }
  end

end
