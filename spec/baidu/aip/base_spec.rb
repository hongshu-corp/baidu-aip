require "spec_helper"
require 'baidu/aip/base'
require 'ostruct'

RSpec.describe Baidu::Aip::Base do

  class MyClient
    include Baidu::Aip::Client

    def initialize(api_key, secret_key)
      self.api_key = api_key
      self.secret_key = secret_key
    end
  end

  let(:api_key) { '1b1142f9507fc173f3cb548190abc651' }
  let(:secret_key) { 'a61387b59bf1af13eb834a67575c1f51' }
  let(:client) { MyClient.new api_key, secret_key }

  describe "#get_token" do
    let(:instance) { Baidu::Aip::Base.new }
    subject { instance.get_token }

    before { instance.client = client; client.access_token = nil }

    describe "should return the token directly if the token exists and valid" do
      let(:current_token) { SecureRandom.hex }
      before {
        client.access_token = current_token
        client.expire_time = Time.now + 3600 * 2
      }

      specify { expect(subject).to eq current_token }
      specify {
        expect(RestClient).not_to receive(:post)
        subject
      }
    end

    describe "token not exists call the api to get token" do
      let(:response_body) {
        { 'access_token' => SecureRandom.hex, 'expires_in' => 3600 * 3 }
      }
      let(:response) { ret = OpenStruct.new; ret.body = response_body.to_json; return ret }
      before { allow(RestClient).to receive(:post).and_return(response) }
      specify { expect(subject).to eq response_body['access_token'] }
    end

    describe "should call the api if the token expires" do
      let(:current_token) { SecureRandom.hex }
      let(:response_body) {
        { 'access_token' => SecureRandom.hex, 'expires_in' => 3600 * 3 }
      }
      let(:response) { ret = OpenStruct.new; ret.body = response_body.to_json; return ret }
      before {
        client.access_token = current_token
        client.expire_time = Time.now + 300
        allow(RestClient).to receive(:post).and_return(response)
      }

      specify { expect(subject).to eq response_body['access_token'] }
    end
  end
end
