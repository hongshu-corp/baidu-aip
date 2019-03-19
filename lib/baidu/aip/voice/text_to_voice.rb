require 'baidu/aip/post_base'

module Baidu
  module Aip
    module Voice
      class TextToVoice < Baidu::Aip::PostBase
        def default_options
          {
            lan: 'zh',
            per: 0,
            # 客户端类型选择，web端填写固定值1
            ctp: 1,
            # 用户唯一标识，用来计算UV值。建议填写能区分用户的机器 MAC 地址或 IMEI码，长度为60字符以
            cuid: 'hongshutest'
          }
        end

        def process
          begin
            raw = RestClient::Request.execute(
              method: :post,
              url: "#{service_url}?#{build_url(get_params)}",
              headers: headers,
              payload: post_params.merge(tok: get_token),
              raw_response: true
            )
            raw
          rescue RestClient::ExceptionWithResponse => e
            log e.response
            JSON(e.response.body)
          end
        end
      end
    end
  end
end
