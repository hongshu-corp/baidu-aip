require 'spec_helper'

RSpec.describe Baidu::Aip::Face::GetList, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::FACE_GET_LIST }
  end

end
