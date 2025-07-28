class GirlImageFetcher
  IMAGE_URLS = [
    'https://i.meee.com.tw/Y8tohD7.jpg',
    'https://i.meee.com.tw/DcjsatE.jpg',
    'https://i.meee.com.tw/NSaXGcZ.jpg',
    'https://i.meee.com.tw/oxfgmCQ.jpg',
    'https://i.meee.com.tw/zGjlaFO.jpg',
    'https://i.meee.com.tw/ttz54fZ.jpg'
    
    # 可自行增加更多圖片連結
  ]

  def self.random_image_url
    IMAGE_URLS.sample
  end
end


