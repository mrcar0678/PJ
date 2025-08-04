class EventProcessor
def process_event(event)
  return unless event.is_a?(Line::Bot::Event::Message)
  return unless event.type == Line::Bot::Event::MessageType::Text

  text = event.message['text'].strip
  puts "[DEBUG] 收到訊息：#{text}"

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
      puts "[ERROR] 抽圖錯誤：#{e.message}"
      message = { type: 'text', text: '系統錯誤，請稍後再試 🙇‍♂️' }
    end

  when '油價'
    begin
      message_text = OilPriceFetcher.fetch
      puts "[DEBUG] 爬到油價內容：#{message_text}"
      message = { type: 'text', text: message_text }
    rescue => e
      puts "[ERROR] 油價爬蟲錯誤：#{e.message}"
      message = { type: 'text', text: '油價資訊取得失敗，請稍後再試。' }
    end
  end
  

  response = client.reply_message(event['replyToken'], message)
  puts "[DEBUG] LINE 回覆狀態：#{response.code}，回應內容：#{response.body}"
end
end
