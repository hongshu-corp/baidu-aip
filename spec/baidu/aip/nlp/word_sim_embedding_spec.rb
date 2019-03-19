require 'spec_helper'

RSpec.describe Baidu::Aip::Nlp::WordSimEmbedding, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::NLP_WORD_SIM_EMBEDDING }
  end

end
