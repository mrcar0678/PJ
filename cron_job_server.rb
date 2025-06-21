require 'sinatra'

get '/my-cron-endpoint' do
  puts "Cron job triggered at #{Time.now}"

  # 實際邏輯在這裡
  status 200
  body "OK"
end
