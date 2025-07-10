require 'httparty'
require 'nokogiri'
require 'uri'

class GirlImageFetcher
  BASE_URL = 'https://pic.netbian.com'

  def self.random_image_url
    max_page = 20
    random_page = rand(1..max_page)
    list_url = if random_page == 1
             "#{BASE_URL}/4kmeinv/index.html"
           else
             "#{BASE_URL}/4kmeinv/index_#{random_page}.html"
           end
    puts "抓列表頁: #{list_url}"
    response = HTTParty.get(list_url)
    return nil unless response.code == 200

    doc = Nokogiri::HTML(response.body)

    # 抓細節頁連結列表（CSS selector根據網站調整）
    detail_links = doc.css('div.slist ul li a').map { |a| a['href'] }.compact

    puts "找到 #{detail_links.size} 個圖片連結"

    return nil if detail_links.empty?

    # 隨機選一個細節頁
    detail_link = detail_links.sample
    detail_url = URI.join(BASE_URL, detail_link).to_s
    puts "選中細節頁: #{detail_url}"

    # 進入細節頁抓大圖
    detail_response = HTTParty.get(detail_url)
    return nil unless detail_response.code == 200

    detail_doc = Nokogiri::HTML(detail_response.body)

    # 根據實際網頁結構改 selector
    big_img = detail_doc.at_css('div.photo-pic a img')
    if big_img && big_img['src']
      img_url = URI.join(BASE_URL, big_img['src']).to_s
      puts "取得大圖網址: #{img_url}"
      return img_url
    else
      puts "沒找到大圖 img 元素"
      return nil
    end
  end
end
