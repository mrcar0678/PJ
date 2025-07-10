require 'line/bot'

require 'nokogiri'
require 'httparty'
require 'uri'
class LineController < ActionController::API
#protect_from_forgery with: :null_session
  before_action :read_body
  before_action :validate_signature
  before_action :read_events

 # 爬取圖片列表








  def webhook
    @events.each do |event|
      process_event(event)
    end
    head :ok
  end



  def process_event(event)
    reply_token = event["replyToken"]
    return if reply_token.nil?
    
      # 避免重複事件
  event_id = event["webhookEventId"]
  return if EventRecord.exists?(event_id: event_id)
 

    text = event["message"] && event["message"]["text"] || event["type"]
    puts ""
    puts "用戶的輸入: #{text}"
    puts ""









   
    message = EventProcessor.new.process(text, event)
    
    
    if ["佛教" , "道教" , "天主教" , "基督教" , "回教", "無信仰"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, b: text)
    bb = Ama1.where(a: channel_id )[0]&.b

    elsif ["北部" , "中部" , "南部" , "東部"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.create(a: channel_id, c: text)
    cc = Ama1.where(a: channel_id )[1]&.c 
    elsif ["返回宗教選單"].include? text
    channel_id = event["source"]["userId"]
    Ama1.where(a: channel_id )[0].delete
     

    elsif ["在家" , "醫院" , "會館" , "殯館"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, d: text)
    dd = Ama1.where(a: channel_id )[2]&.d
    elsif ["返回位置選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[1].delete

    elsif ["冰存(淨身)" , "冰存(不淨身)" , "不冰存(淨身)" , "不冰存(不淨身)"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, e: text)
    ee = Ama1.where(a: channel_id )[3]&.e
    elsif ["返回場所選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[2].delete

    elsif ["青玉鈦合金內膽" , "不銹鋼內膽" , "鈦合金心經內膽" , "黑花崗直筒骨灰罐" , "琉璃白"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, f: text)
    ff = Ama1.where(a: channel_id )[4]&.f
    elsif ["返回保存選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[3].delete

    elsif ["男款西裝" , "女款裙裝" ].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, g: text)
    gg = Ama1.where(a: channel_id )[5]&.g
    elsif ["返回骨罐選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[4].delete

    elsif ["黑袍" , "披麻戴孝" ].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, h: text)
    hh = Ama1.where(a: channel_id )[6]&.h
    elsif ["返回壽衣選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[5].delete

    elsif ["123禮車" , "456禮車" , "789禮車" ].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, i: text)
    ii = Ama1.where(a: channel_id )[7]&.i
    elsif ["返回孝服選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[6].delete

    elsif ["有需求做七" , "無需求做七" ].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, j: text)
    jj = Ama1.where(a: channel_id )[8]&.j
    elsif ["返回禮車選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[7].delete

    elsif ["有需求拜藥懺" , "無需求拜藥懺" ].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, k: text)
    kk = Ama1.where(a: channel_id )[9]&.k
    elsif ["返回做七選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[8].delete

    elsif ["有需求解冤親" , "無需求解冤親"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, l: text)
    ll = Ama1.where(a: channel_id )[10]&.l
    elsif ["返回拜藥懺選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[9].delete

    elsif ["靈前告別式" , "會館告別式" , "殯儀館告別式"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, m: text)
    mm = Ama1.where(a: channel_id )[11]&.m
    elsif ["返回解冤親選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[10].delete

    elsif ["有需求花圈花籃" , "無需求花圈花籃"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, n: text)
    nn = Ama1.where(a: channel_id )[12]&.n
    elsif ["返回告別式選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[11].delete

    elsif ["有需求祭品拜飯" , "無需求祭品拜飯"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, o: text)
    oo = Ama1.where(a: channel_id )[13]&.o
    elsif ["返回花圈花籃選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[12].delete

    elsif ["有需求交通車" , "無需求交通車"].include? text 
    channel_id = event["source"]["userId"]
    Ama1.create(a: channel_id, p: text)
    pp = Ama1.where(a: channel_id )[14]&.p
    elsif ["返回祭品拜飯選單"].include? text
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id )[13].delete

    elsif text[-11] == '/'
    channel_id = event["source"]["userId"]
    username = text[0..-12]
    phonenb = text[4..13]
    Ama1.create(a: channel_id, q: username)
    Ama1.create(a: channel_id, r: phonenb)
    bb = Ama1.where(a: channel_id )[0]&.b
    cc = Ama1.where(a: channel_id )[1]&.c 
    dd = Ama1.where(a: channel_id )[2]&.d
    ee = Ama1.where(a: channel_id )[3]&.e
    ff = Ama1.where(a: channel_id )[4]&.f
    gg = Ama1.where(a: channel_id )[5]&.g
    hh = Ama1.where(a: channel_id )[6]&.h
    ii = Ama1.where(a: channel_id )[7]&.i
    jj = Ama1.where(a: channel_id )[8]&.j
    kk = Ama1.where(a: channel_id )[9]&.k
    ll = Ama1.where(a: channel_id )[10]&.l
    mm = Ama1.where(a: channel_id )[11]&.m
    nn = Ama1.where(a: channel_id )[12]&.n
    oo = Ama1.where(a: channel_id )[13]&.o
    pp = Ama1.where(a: channel_id )[14]&.p
    qq = Ama1.where(a: channel_id )[15]&.q
    rr = Ama1.where(a: channel_id )[16]&.r
    
   Ama2.create(a: channel_id, b:bb, c:cc, d:dd, e:ee, f:ff, g:gg, h:hh, i:ii, j:jj, k:kk, l:ll, m:mm, n:nn, o:oo, p:pp, q:qq, r:rr)
   #Careyoualll.where(a: channel_id ).delete_all
   #Careyoual.where(aa: channel_id ).delete_all 
    elsif text == "確認"
    channel_id = event["source"]["userId"]
    Ama1.where(a: channel_id ).delete_all
    Ama2.where(a: channel_id ).delete_all
  
    elsif text == "返回重新選擇"
    channel_id = event["source"]["userId"]  
    Ama1.where(a: channel_id ).delete_all
    Ama2.where(a: channel_id ).delete_all
    
    elsif text == "結束"
    require 'uri'
    channel_id = event["source"]["userId"]
    a = Careyouall.where(name: channel_id )[0]&.a1
    a2 = URI.encode(a)

    b = Careyouall.where(name: channel_id )[1]&.b1
    b2 = URI.encode(b)

    c = Careyouall.where(name: channel_id )[2]&.c1
    c2 = URI.encode(c)

    d = Careyouall.where(name: channel_id )[3]&.d1
    d2 = URI.encode(d)

    e = Careyouall.where(name: channel_id )[4]&.e1
    e2 = URI.encode(e)

    uri = URI("https://docs.google.com/forms/d/e/1FAIpQLSdfYVXR0K4gxgllg3f8MbEmDVhmcdC4rIdcotwRBdZbTQvwAg/formResponse?submit=Submit&entry.1310478408=#{a2}&entry.626552375=#{b2}&entry.1349532563=#{c2}&entry.504047836=#{d2}&entry.2016528108=#{e2}&entry.457765002=1&entry.458448254=1&entry.1596092689=1")
    body = Net::HTTP.get(uri)
  
  end
  


    puts ""
    puts "聊天機器人的回應: #{message}"
    puts ""
    

    return if message.blank?
    response = client.reply_message(reply_token, message)
    puts ""
    puts "Line的回應: #{response.body}"
    puts ""
  # 紀錄事件，避免重複回覆
  EventRecord.create!(event_id: event_id)
   
  end

  private

  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
end

  end

  def read_body
    @body = request.body.read
  end

  def read_events
    @events = client.parse_events_from(@body)
  end

  def validate_signature
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    client.validate_signature(@body, signature)
  end

end

