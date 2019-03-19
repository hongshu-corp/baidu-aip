require 'spec_helper'

RSpec.describe Baidu::Aip::ImageAudit::Combination, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::IMAGE_AUDIT_COMBINATION }
  end

end
