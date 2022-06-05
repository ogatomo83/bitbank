class AnalysisController < ApplicationController
  def analysis
    require 'net/http'

    uri = URI.parse("https://public.bitbank.cc/btc_jpy/ticker")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    @sellValue = result['data']['sell']
    @buyValue = result['data']['buy']
  end
end


