require 'spec_helper'

RSpec.describe Baidu::Aip::ImageAudit::Censor, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::IMAGE_AUDIT_CENSOR }
  end
end
