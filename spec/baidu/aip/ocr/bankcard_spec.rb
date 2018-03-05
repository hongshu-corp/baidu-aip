require "spec_helper"

RSpec.describe Baidu::Aip::Ocr::Bankcard, type: :model do
  let(:model) { described_class.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::OCR_BANKCARD }
  end

end
