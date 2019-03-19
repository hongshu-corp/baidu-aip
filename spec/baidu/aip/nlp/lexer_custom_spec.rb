require 'spec_helper'

RSpec.describe Baidu::Aip::Nlp::LexerCustom, type: :model do
  let(:model) { described_class.new }

  describe '#service_url' do
    specify { expect(model.service_url).to eq Baidu::Aip::Constants::NLP_LEXER_CUSTOM }
  end

end
