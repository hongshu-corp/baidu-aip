require 'spec_helper'
require 'baidu/aip/base'
require 'ostruct'

RSpec.describe Baidu::Aip::Base do
  class MyClient
    include Baidu::Aip::Client

    def initialize(api_key, secret_key)
      self.api_key = api_key
      self.secret_key = secret_key
    end

    def image_params(image_or_url, option_a, options = {})
      options.merge(a: option_a).merge(send(:image_or_url_param, image_or_url))
    end
  end

  let(:api_key) { '1b1142f9507fc173f3cb548190abc651' }
  let(:secret_key) { 'a61387b59bf1af13eb834a67575c1f51' }
  let(:client) { MyClient.new api_key, secret_key }

  describe '#image_or_url_param' do
    let(:url) { 'http://hongshu.io/a.jpg' }
    let(:option) { client.image_params(url, 'test', b: 'bcontent') }
    specify { expect(option['imgUrl']).to eq url }
  end
end
