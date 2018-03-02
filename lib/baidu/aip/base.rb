require 'erb'
require 'json'
require 'rest-client'

module Baidu
  module Aip
    class Base

      attr_accessor :client

      TOKEN_URL = 'https://aip.baidubce.com/oauth/2.0/token'

      def service_url
        ''
      end

      def get_params
        custom_params.merge intrinsic_params
      end

      def post_params
        {}
      end

      def headers
        {accept: :json}
      end

      def process
        begin
          response = RestClient.post "#{service_url}?#{build_url(get_params)}", post_params, headers
          JSON(response.body)
        rescue RestClient::ExceptionWithResponse => e
          log e.response
          JSON(e.response.body)
        end
      end

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
            log e.response
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

        def custom_params
          {}
        end

        def intrinsic_params
          {
            :access_token => get_token,
            :aipSdk => 'ruby',
          }
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

        def log(text)
          puts text
          Rails.logger.info(text) if defined? Rails
        end

    end
  end
end
