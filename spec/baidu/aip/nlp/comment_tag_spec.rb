require 'spec_helper'

RSpec.describe Baidu::Aip::Nlp::CommentTag, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::NLP_COMMENT_TAG }
  end

end
