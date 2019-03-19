require 'spec_helper'

RSpec.describe Baidu::Aip::Ocr::BusinessCard, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::OCR_BUSINESS_CARD }
  end

end
