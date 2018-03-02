require "spec_helper"

RSpec.describe Baidu::Aip::Face::GroupCopyUser, type: :model do
  let(:model) { described_class.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::FACE_GROUP_COPY_USER }
  end

end
