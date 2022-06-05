# namespace :orders do
#   desc "10,00円で0.0001BTCの買い注文を入れる"
#   task :buy => :environment do
#     bbcc = Bitbankcc.new("d3b7cbed-5cfd-482a-94f0-c8581f3cb83c", "08fac5318861897e0bcfdd7823035bacb63b9b5d0cd142b5f48c3cde4f0c4b88")
#     response = bbcc.create_order('btc_jpy', "0.00001", 1000, 'buy', 'limit')
#     result = JSON.parse(response)

#     if result['success'] == 1
#       puts "完了！"
#     end
#   end
# end

namespace :orders do
  desc "1,000円で0.01BTCの買い注文を入れる"
  task :buy => :environment do
    bbcc = Bitbankcc.new("d3b7cbed-5cfd-482a-94f0-c8581f3cb83c", "08fac5318861897e0bcfdd7823035bacb63b9b5d0cd142b5f48c3cde4f0c4b88")
    response = bbcc.create_order('btc_jpy', "0.0001", 400, 'buy', 'limit')
    result = JSON.parse(response)
    puts result

    if result['success'] == 1
      puts "完了！"
    end
  end
end

namespace :orders do
  desc "1,000円で0.01BTCの買い注文を入れる"
  task :sell => :environment do
    bbcc = Bitbankcc.new("d3b7cbed-5cfd-482a-94f0-c8581f3cb83c", "08fac5318861897e0bcfdd7823035bacb63b9b5d0cd142b5f48c3cde4f0c4b88")
    response = bbcc.create_order('btc_jpy', "0.0001", 430, 'sell', 'limit')
    result = JSON.parse(response)
    puts result

    if result['success'] == 1
      puts "完了！"
    end
  end
end