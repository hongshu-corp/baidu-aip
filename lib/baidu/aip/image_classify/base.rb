require 'json'
require 'rest-client'

module Baidu
  module Aip
    module ImageClassify
      class Base

        attr_accessor :client

        SERVICE_URL = "http://dysmsapi.aliyuncs.com/"

        def action
          ""
        end

        def get_params
          custom_params.merge intrinsic_params
        end

        def send_request
          q_without_sig = build_url(get_params)
          q_full= "Signature=#{sign(q_without_sig)}&#{q_without_sig}"

          begin
            response = RestClient.get "#{SERVICE_URL}?#{q_full}"
          rescue RestClient::ExceptionWithResponse => e
            puts e.response
            Rails.logger.error(e.response) if defined? Rails
            e.response
          end
        end

        protected
          def custom_params
            {}
          end

          def intrinsic_params
            {
              :AccessKeyId => client.access_key_id,
              :SignName => client.sign_name,
              :Format => Aliyun::CloudSms.format,
              :RegionId => Aliyun::CloudSms.region_id,
              :SignatureMethod => Aliyun::CloudSms.signature_method,
              :SignatureVersion => Aliyun::CloudSms.signature_version,
              :Timestamp => timestamp,
              :SignatureNonce => nonce,
              :Action => action,
              :Version => Aliyun::CloudSms.sms_version
            }
          end

          def timestamp
            Time.now.utc.strftime("%FT%TZ")
          end

          def nonce
            UUID.generate
          end

          def build_url(hash)
            hash.map{|k,v|"#{encode(k.to_s)}=#{encode(v.to_s)}"}.sort.join('&')
          end

          def encode(str)
            ERB::Util.url_encode str
          end

          def sign(str)
            str = "GET&#{encode('/')}&#{encode(str)}"
            ret = OpenSSL::HMAC.digest('sha1', "#{client.access_key_secret}&", str)
            ret = Base64.encode64(ret)
            encode(ret.chomp)
          end
      end
    end
  end
end
