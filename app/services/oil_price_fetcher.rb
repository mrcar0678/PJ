require 'httparty'
require 'nokogiri'

class OilPriceFetcher
  URL = 'https://www2.moeaea.gov.tw/oil111/Gasoline/NationwideAvg'

  def self.fetch
    response = HTTParty.get(URL)
    return "⚠️ 油價頁面無法取得，HTTP狀態碼: #{response.code}" unless response.code == 200

    doc = Nokogiri::HTML(response.body)
    # 找第一筆全國平均油價列（你要用瀏覽器F12看table結構確認正確css selector）
    row = doc.css('table.table-striped tbody tr').first
    return "⚠️ 找不到油價資料" unless row

    cells = row.css('td').map(&:text).map(&:strip)

    "中油最新油價（全國平均）：\n"\
    "98無鉛：#{cells[1]} 元/公升\n"\
    "95無鉛：#{cells[2]} 元/公升\n"\
    "92無鉛：#{cells[3]} 元/公升\n"\
    "柴油：#{cells[4]} 元/公升"
  rescue => e
    "⚠️ 發生錯誤：#{e.message}"
  end
end
