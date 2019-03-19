require 'spec_helper'

RSpec.describe Baidu::Aip::Ocr::VehicleLicense, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::OCR_VEHICLE_LICENSE }
  end

end
