require 'line/bot'
require_relative '../services/girl_image_fetcher'
require_relative '../services/oil_price_fetcher'  # 新增

class LineController < ApplicationController
  protect_from_forgery with: :null_session

  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
    end
  end

  def webhook
    events = client.parse_events_from(request.body.read)

    events.each do |event|
      process_event(event)
    end

    head :ok
  end

  private

  def process_event(event)
    return unless event.is_a?(Line::Bot::Event::Message)
    return unless event.type == Line::Bot::Event::MessageType::Text

    text = event.message['text'].strip

    case text
    when '抽'
      begin
        image_url = GirlImageFetcher.random_image_url
        if image_url
          message = {
            type: 'image',
            originalContentUrl: image_url,
            previewImageUrl: image_url
          }
        else
          message = { type: 'text', text: '目前沒有圖片可抽喔！' }
        end
      rescue => e
        puts "❌ 發生錯誤：#{e.message}"
        message = { type: 'text', text: '系統錯誤，請稍後再試 🙇‍♂️' }
      end

    when '油價'
      message_text = OilPriceFetcher.fetch
      message = { type: 'text', text: message_text }


    end

    client.reply_message(event['replyToken'], message)
  end
end



