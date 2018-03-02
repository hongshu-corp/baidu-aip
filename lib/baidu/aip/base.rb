require 'erb'
require 'json'
require 'rest-client'

module Baidu
  module Aip
    class Base

      attr_accessor :client

      TOKEN_URL = 'https://aip.baidubce.com/oauth/2.0/token'


      def get_token
        if client.access_token && from_now(hour(1)) < client.expire_time
          client.access_token
        else
          token_hash = {
            :grant_type => 'client_credentials',
            :client_id => client.api_key,
            :client_secret => client.secret_key
          }

          begin
            token_response = RestClient.post "#{TOKEN_URL}?#{build_url(token_hash)}", {}, {}
            json = JSON(token_response.body)
            client.access_token = json['access_token']
            client.expire_time = Time.now + json['expires_in']
            client.access_token
          rescue RestClient::ExceptionWithResponse => e
            puts e.response
            Rails.logger.error(e.response) if defined? Rails
            return nil
          end
        end
      end

      protected
        def build_url(hash)
          hash.map{|k,v|"#{encode(k.to_s)}=#{encode(v.to_s)}"}.join('&')
        end

        def encode(str)
          ERB::Util.url_encode str
        end

        def hour(num)
          3600 * num
        end

        def from_now(seconds)
          Time.now + seconds
        end

        def ago(seconds)
          Time.now - seconds
        end

    end
  end
end
