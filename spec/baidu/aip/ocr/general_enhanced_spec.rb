require "spec_helper"

RSpec.describe Baidu::Aip::Ocr::GeneralEnhanced, type: :model do
  let(:model) { described_class.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::OCR_GENERAL_ENHANCED }
  end

end
