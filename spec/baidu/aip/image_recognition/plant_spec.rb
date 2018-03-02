require "spec_helper"

RSpec.describe Baidu::Aip::ImageRecognition::Plant, type: :model do
  let(:model) { described_class.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::IMAGE_RECOGNITION_PLANT }
  end

end
