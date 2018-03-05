require "spec_helper"

RSpec.describe Baidu::Aip::ImageSearch::ProductAdd, type: :model do
  let(:model) { described_class.new }

  describe "#service_url" do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::IMAGE_SEARCH_PRODUCT_ADD }
  end

end
