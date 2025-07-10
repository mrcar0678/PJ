class EventProcessor
  require_relative '../services/girl_image_fetcher'

  def process(text, event)
    puts "👤 用戶輸入：#{text}"
    puts "📦 Event：#{event.inspect}"
   
if text == "抽"
      image_url = GirlImageFetcher.random_image_url
      if image_url
        return {
          type: 'image',
          originalContentUrl: image_url,
          previewImageUrl: image_url
        }
      else
        return { type: 'text', text: '抱歉，抓取圖片失敗，請稍後再試。' }
      end
    end



 channel_id = event["source"]["userId"]
 @b = Ama2.where(a: channel_id )[0]&.b
 channel_id = event["source"]["userId"]
 @c = Ama2.where(a: channel_id )[0]&.c
 channel_id = event["source"]["userId"]
 @d = Ama2.where(a: channel_id )[0]&.d
 channel_id = event["source"]["userId"]
 @e = Ama2.where(a: channel_id )[0]&.e
 channel_id = event["source"]["userId"]
 @f = Ama2.where(a: channel_id )[0]&.f
 channel_id = event["source"]["userId"]
 @g = Ama2.where(a: channel_id )[0]&.g
 channel_id = event["source"]["userId"]
 @h = Ama2.where(a: channel_id )[0]&.h
 channel_id = event["source"]["userId"]
 @i = Ama2.where(a: channel_id )[0]&.i
 channel_id = event["source"]["userId"]
 @j = Ama2.where(a: channel_id )[0]&.j
 channel_id = event["source"]["userId"]
 @k = Ama2.where(a: channel_id )[0]&.k
 channel_id = event["source"]["userId"]
 @l = Ama2.where(a: channel_id )[0]&.l
 channel_id = event["source"]["userId"]
 @m = Ama2.where(a: channel_id )[0]&.m
 channel_id = event["source"]["userId"]
 @n = Ama2.where(a: channel_id )[0]&.n
 channel_id = event["source"]["userId"]
 @o = Ama2.where(a: channel_id )[0]&.o
 channel_id = event["source"]["userId"]
 @p = Ama2.where(a: channel_id )[0]&.p
 channel_id = event["source"]["userId"]
 @q = Ama2.where(a: channel_id )[0]&.q
 channel_id = event["source"]["userId"]
 @r = Ama2.where(a: channel_id )[0]&.r

#關鍵字答覆#####################################################
return ky1 if ["遺產" , "遺產稅"].include? text

return ky2 if ["奠禮" , "奠禮後" , "注意事項"  , "禁忌","注意"].include? text

return ky3 if ["入殮" , "小殮" , "大殮", "遺體保存"].include? text

return ky4 if ["打桶" , "保存" , "遺體保存", "遺體存放"].include? text


  

#禮儀師團隊####################################################
return member_1 if  text == "禮儀團隊"


#禮儀資訊#######################################################

return test_0 if text == "喪禮服務" 

return test_0 if text == "返回重新選擇"
return test_0 if text == "返回宗教選單"

return test_1 if text == "福緣禮儀服務內容"
return test_1 if text == "返回位置選單"

return test_2  if  ["北部" , "中部" , "南部" , "東部"].include? text 
return test_2 if text == "返回場所選單"

return test_3  if  ["在家" , "醫院" , "會館" , "殯館"].include? text
return test_3 if text == "返回保存選單"

return test_4  if  ["冰存(淨身)" , "冰存(不淨身)" , "不冰存(淨身)" , "不冰存(不淨身)"].include? text
return test_4 if text == "返回需求選單"

return test_5  if  ["有需求"].include? text
return test_5 if text == "返回骨罐選單"

return test_6  if  ["青玉鈦合金內膽" , "不銹鋼內膽" , "鈦合金心經內膽" , "黑花崗直筒骨灰罐" , "琉璃白"].include? text
return test_6 if text == "返回壽衣選單"

return test_7  if  ["男款西裝" , "女款裙裝" ].include? text
return test_7 if text == "返回孝服選單"

return test_8  if  ["黑袍" , "披麻戴孝"  ].include? text
return test_8 if text == "返回禮車選單"

return test_9  if  ["123禮車" , "456禮車" , "789禮車"].include? text
return test_9 if text == "返回做七選單"

return test_10  if  ["有需求做七" , "無需求做七" ].include? text
return test_10 if text == "返回拜藥籤選單"

return test_11  if  ["有需求拜藥懺" , "無需求拜藥懺" ].include? text
return test_11 if text == "返回解冤親選單"

return test_12  if  ["有需求解冤親" , "無需求解冤親" ].include? text
return test_12 if text == "返回告別式選單"

return test_13  if  ["靈前告別式" , "會館告別式" , "殯儀館告別式" ].include? text
return test_13 if text == "返回花圈花籃選單"

return test_14  if  ["有需求花圈花籃" , "無需求花圈花籃" ].include? text
return test_14 if text == "返回祭品拜飯選單"

return test_15  if  ["有需求祭品拜飯" , "無需求祭品拜飯" ].include? text


return test_16  if  ["有需求交通車" , "無需求交通車" ].include? text


return test_17  if  text[-11] == '/'

return abc if text == "送出表單"

end 




#關鍵字回覆選單##############################################
def ky1 #遺產處理
{   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://img.mymusic.net.tw/mms/album/L/203/152203.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "遺產處理該到哪個單位？",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "ＡＮＳ：\n\n到各地方國稅局",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }

           
          ]
        }
        
      }
    }
    end


def ky2 #奠禮後各項儀節注意事項
  
  {
   "type": "flex",
      "altText": "this is a flex message",
      "contents": 
{
  "type": "carousel",
  "contents": [
   {
      "type": "bubble",
     # "size": "micro",
      
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "\n\n\n\n\n\n\n  奠禮後各項儀節注意事項",
            "weight": "bold",
            "gravity": "center",
            "wrap": true,
            "size": "xl"

          },
          
          
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },    

    {
      "type": "bubble",
      #{}"size": "micro",
      "hero": {
        "type": "image",
        "url": "https://bpic.588ku.com/element_origin_min_pic/19/04/09/e9f949d9d9b707cc5183fbb84014ba32.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "儀容整理",
            "weight": "bold",
            "size": "xl",
            "wrap": true
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "告別奠禮圓滿完成後，即可修整儀容，象徵新階段的開始，恢復日常生活作息。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },
    {
      "type": "bubble",
      #{}"size": "micro",
      "hero": {
        "type": "image",
        "url": "https://scdn.line-apps.com/n/channel_devcenter/img/flexsnapshot/clip/clip11.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "拜飯",
            "weight": "bold",
            "size": "xl",
            "wrap": true
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "每月初一、十五（農曆），早上7~8點和下午3~4點準備家常菜（菜式3~6樣皆可）、米飯一碗，筷子一雙，清茶一杯，直到【對年】（或合爐）。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },
    {
      "type": "bubble",
     # "size": "micro",
      "hero": {
        "type": "image",
        "url": "https://scdn.line-apps.com/n/channel_devcenter/img/flexsnapshot/clip/clip12.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "沖煞",
            "weight": "bold",
            "size": "xl"
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "逢婚喪喜慶、新居落成等紅白帖邀請，不進新宅，【禮到人不到】，直至【百日】（或對年）。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },
    {
      "type": "bubble",
     # "size": "micro",
      "hero": {
        "type": "image",
        "url": "https://scdn.line-apps.com/n/channel_devcenter/img/flexsnapshot/clip/clip12.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "祭祖時節",
            "weight": "bold",
            "size": "xl"
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "新亡第一年，逢「農曆春節、元宵、清明、端午、中元、重陽、冬至、除夕」等，請【提前一日】為親人祭拜過節，祭拜方式、時間及祭品準備方式，皆與以往祭拜祖先相同。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },
    {
      "type": "bubble",
     # "size": "micro",
      "hero": {
        "type": "image",
        "url": "https://scdn.line-apps.com/n/channel_devcenter/img/flexsnapshot/clip/clip12.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "清明掃墓",
            "weight": "bold",
            "size": "xl"
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "第一年在清明節之前，擇一日即可（春社日前）。祭品準備與以往清明祭拜時相同即可。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    },
    {
      "type": "bubble",
     # "size": "micro",
      "hero": {
        "type": "image",
        "url": "https://scdn.line-apps.com/n/channel_devcenter/img/flexsnapshot/clip/clip12.jpg",
        "size": "full",
        "aspectMode": "cover",
        "aspectRatio": "320:213"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "contents": [
          {
            "type": "text",
            "text": "其他注意事項",
            "weight": "bold",
            "size": "xl"
          },
          
          {
            "type": "box",
            "layout": "vertical",
            "contents": [
              {
                "type": "box",
                "layout": "baseline",
                "spacing": "sm",
                "contents": [
                  {
                    "type": "text",
                    "text": "合爐前，逢年節不可做年榚，端午、中元不可綁鹹粽，可由出嫁女兒或親友饋贈，須回紅糖一包上貼紅紙。",
                    "wrap": true,
                    #{}"color": "#8c8c8c",
                    "size": "md",
                    "flex": 5
                  }
                ]
              }
            ]
          }
        ],
        "spacing": "sm",
        "paddingAll": "13px"
      }
    }
  ]
}
}
end

def ky3 #入殮
{   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://www.prawokonsumenckie.pl/img/artykuly/6/2019_04/1097.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "入殮",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "一個人死亡後，把他的遺體放入棺槨裡，就叫做入殮。\n\n入殮分為小殮和大殮，小殮指的是把遺體放入棺內，大殮則是小殮後完成奠祭儀式、瞻(視)儀容後，將棺木封閉的動作\n\n入殮之後的棺稱之為柩，在未入殮前，棺材稱為靈櫬。",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }

           
          ]
        }
        
      }
    }
    end

def ky4 #打桶
{   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://www.ebapp.com.tw/upload/Product/4019030001/201903231246361.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "打桶",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "入殮停棺俗稱打桶，此名來自早期日本人入殮以桶裝故稱。早期富貴人家因對亡者不捨而希望亡者能在家中多停留，常將棺木處理得密不透風來保存遺體，亦稱停柩。\n\n現今多將遺體存放在殯儀館或醫院的冷凍室，也有移動式冷凍庫可供選擇。",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }

           
          ]
        }
        
      }
    }
    end




#禮儀資訊選單###################################################################
def abc
 
 {   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwCaRZ8iVg_WZR-Vx1Y0kquizl59ZnJH5EzUaGAubXgGMiALCp",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "您的選購清單",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "主事者：#{@q}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "電話：#{@r}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
           

              {
                "type": "text",
                "text": "宗教信仰：#{@b}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "居住地區：#{@c}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "目前位置：#{@d}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "身體保存方式：#{@e}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              
              {
                "type": "text",
                "text": "骨罐樣式：#{@f}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "壽衣樣式：#{@g}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "孝服樣式：#{@h}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "禮車型號：#{@i}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "做七法事：#{@j}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "拜藥懺：#{@k}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "解冤親：#{@l}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "會場規格：#{@m}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "花圈花籃：#{@n}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "祭品拜飯：#{@o}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              {
                "type": "text",
                "text": "交通車接送：#{@p}",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
            ]
          }
        ]
      },


           
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "確認",
                "text": "確認"
                
              }
            },
             {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回重新選擇",
                "text": "返回重新選擇"
                
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
        
      }
    }


  end  

def test_0 #契約選單
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2022/08/31/945jgJ.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "福緣禮儀服務",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n以簡單尊嚴的方式\n為家人規劃一場人生的畢業典禮",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "md",
                "flex": 0
              },
              
            ]
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n契約價格：99000",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "服務內容",
              "text": "福緣禮儀服務內容"
            }
          },
          
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://bpic.588ku.com/art_origin_min_pic/21/12/11/298e19ebab4ada44a505167608fcdd14.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "圓滿禮儀服務",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n以莊嚴圓滿方式\n為家人規劃一場溫馨的畢業典禮",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "md",
                "flex": 0
              },
              
            ]
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n契約價格：169000",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "服務內容",
              "text": "圓滿禮儀服務內容"
            }
          },
          
        ]
      }
    },
    

    
  ]
}
    }
    end

    def test_1 #幅緣禮儀服務內容
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://blog.betterhelpgroup.com/wp-content/uploads/2020/11/%E6%84%9B%E8%87%AA%E5%B7%B1-500x400.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "臨終諮詢",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n臨終禮儀與習俗諮詢\n\n服務專線：0800-666016",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://www.scbao.com/uploads/allimg/140408/234642-14040Q5245972.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "遺體接送",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n接體服務\n遺體安置\n協助處理初終禮儀事項",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "選擇遺體冰存方式：",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "冰存（淨身）",
              "text": "冰存（淨身）"
            }
          },
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "冰存（不淨身）",
              "text": "冰存（不淨身）"
            }
          },
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "不冰存（淨身）",
              "text": "不冰存（淨身）"
            }
          },
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "不冰存（不淨身）",
              "text": "不冰存（不淨身）"
            }
          },
        ]
      }
      
    },
   {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://img95.699pic.com/xsj/01/l4/vh.jpg!/fh/300"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "設立靈位",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n設立靈位\n靈堂佈置\n安靈法事",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://img95.699pic.com/xsj/1o/2i/gi.jpg!/fh/300"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "治喪協調",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n治喪流程及會場規劃·協調\n\n喪禮儀節日期·時辰擇定\n\n喪葬日課表\n\n殯葬禮儀服務內容說明\n\n相關權益說明\n\n訃聞協助撰寫\n\n提供生平事略範例參考\n\n提供奠文範例參考\n\n擬定治喪手冊\n\n火化許可證申請\n\n辦理禮聽預定",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "md",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://www.ebapp.com.tw/Mobile/newsimage/1515?.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "法事",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n頭七禮儀\n滿七禮儀",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://www.illust-factory.com/wp-content/uploads/2020/01/G/sample_g22_G_img03.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "遺體入殮",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n遺體退冰\n遺體更衣\n化妝\n辭生\n放手尾\n遺體入殮\n選擇壽衣款式：",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "男款西裝",
              "text": "男款西裝"
            }
          },
        
         
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "女款裙裝",
              "text": "女款裙裝）"
            }
          },
        ]
      }
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://t.pimg.jp/045/465/362/1/45465362.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "家公奠禮",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n移靈\n誦經\n家奠禮\n公奠禮\n親友捻香\n選擇孝服款式：",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "黑袍",
              "text": "黑袍"
            }
          },
        
         
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "披麻戴孝",
              "text": "披麻戴孝"
            }
          },
        ]
      }
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://3.bp.blogspot.com/-fTIn98RJb0A/UQC7Yg6MOgI/AAAAAAAALFg/PrrJUQ9VQPQ/s1600/osoushiki_syukkan.png"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "出殯發引",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n瞻仰遺容\n移柩\n封釘禮\n旋棺\n發引\n辭客",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://img95.699pic.com/photo/40155/6203.jpg_wh300.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "遺體火化",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n誦經\n進爐儀式\n除服\n撿骨\n封罐",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://pic.pimg.tw/hellowandy/1385301461-3232769131.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "返主安靈",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n返主安靈\n誦經\n洗淨\n除紅",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://img.88tph.com/p1/production/20180107/12438255.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "晉塔",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n晉塔安正\n家屬祭拜\n誦經",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://png.pngtree.com/png-vector/20220513/ourmid/pngtree-hand-background-business-care-community-png-image_4586462.png"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "後續關懷",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "\n家屬滿意度調查及建議\n客戶問題處理及答覆\n百日\n對年（三年）\n合爐之提醒及禮儀諮詢服務",
                #{}"align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      
    }, 

  ]
}
    }
    end

def test_100 #宗教習慣
      {   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://upload.wikimedia.org/wikipedia/commons/9/90/XXXXCAT.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "選擇您的宗教信仰",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "華人注重禮數，在儀式上凱優貼心的幫您把信仰和禮儀結合，給您專業的建議請選擇適合您的選項",
                "wrap": true,
                "color": "#aaaaaa",

                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }

           
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "佛教",
                "text": "佛教"
                
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "道教",
                "text": "道教"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "天主教",
                "text": "天主教"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "基督教",
                "text": "基督教"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "回教",
                "text": "回教"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無信仰",
                "text": "無信仰"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
   
    end


  def test_111 #居住所在地

      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://www.crazy-tutorial.com/wp-content/uploads/2018/06/navigation-map-vector-1200x628.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": " 選擇所在地區",
              "weight": "bold",
              "size": "xl"
            },
         
            {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "根據各地風俗不同，凱優統整不同風俗所對應的儀式，讓典禮順利進行",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "北部",
                "text": "北部"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "中部",
                "text": "中部"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "南部",
                "text": "南部"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "東部",
                "text": "東部"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回宗教選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
    end
  def test_2 #目前所在位置
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://images.clipartlogo.com/files/istock/previews/9392/93922041-cute-cartoon-pattern-with-houses-seamless-vector-background.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "目前所在位置",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "突發事情，凱優立即啟動服務，讓您可以與親友有充分時間告別，請告知當下所在位置",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "在家",
                "text": "在家"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "醫院",
                "text": "醫院"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "會館",
                "text": "會館"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "殯館",
                "text": "殯館"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回位置選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
    end

    def test_3 #保存方式
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3J_k713ulel5z-MW-LDH_aieoC5tAcBjAd7IGzf9_a-Xid357",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "保存方式",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "對往者的尊重及思念，凱優安排以下兩種方式協助親人陪伴追",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "冰存(淨身)",
                "text": "冰存(淨身)"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "冰存(不淨身)",
                "text": "冰存(不淨身)"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "不冰存(淨身)",
                "text": "不冰存(淨身)"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "不冰存(不淨身)",
                "text": "不冰存(不淨身)"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回場所選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
    end

    def test_4 #需求選單
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://us.123rf.com/450wm/samuraitop/samuraitop1603/samuraitop160300075/54429374-businessman-with-question-mark-in-his-think-bubble.jpg?ver=6",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "我想了解更多禮儀內容，\n自主禮儀請繼續",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回保存選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
    end

def test_5 #骨罐樣式
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    {
      "type": "bubble",
      "body": {
        "type": "box",
        "layout": "horizontal",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "選擇所需骨罐樣式",
            "gravity": "center",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
        
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/tT0vcP.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "青玉鈦合金內膽",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "特色：防震、適合放塔位(公塔)契約外加",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "青玉鈦合金內膽",
              "text": "青玉鈦合金內膽"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回需求選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/Y6BLDd.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "不銹鋼內膽",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "特色：防震,預約契約（禮儀師折扣",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "不銹鋼內膽",
              "text": "不銹鋼內膽"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回需求選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/MXrRxq.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "鈦合金心經內膽",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "特色：經文高雅防震,預約契約（禮儀師折價)",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "鈦合金心經內膽",
              "text": "鈦合金心經內膽"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回需求選單"
              }
            },
        ]
      }
    },
{
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/lAf7CU.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "黑花崗直筒骨灰罐",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "特色：品質穩定，90%客人選購,契約內直送,單點最優惠",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "黑花崗直筒骨灰罐",
              "text": "黑花崗直筒骨灰罐"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回需求選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/rZWykJ.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "琉璃白",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "特色：潔淨透亮光澤明顯",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "琉璃白",
              "text": "琉璃白"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回需求選單"
              }
            },
        ]
      }
    },
  ]
}
    }
    end


def test_6 #壽衣樣式
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    {
      "type": "bubble",
      "body": {
        "type": "box",
        "layout": "horizontal",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "選擇所需壽衣樣式",
            "gravity": "center",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
        
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/xvJIf0.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "男款西裝",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "男款西裝",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "男款西裝",
              "text": "男款西裝"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回骨罐選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/HSnaq3.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "女款裙裝",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "女款裙裝",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "女款裙裝",
              "text": "女款裙裝"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回骨罐選單"
              }
            }, 
        ]
      }
    },
    

    
  ]
}
    }
    end

def test_7 #孝服樣式

      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    {
      "type": "bubble",
      "body": {
        "type": "box",
        "layout": "horizontal",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "選擇所需孝服樣式",
            "gravity": "center",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
        
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/uxV0v2.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "黑袍",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "黑袍",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "黑袍",
              "text": "黑袍"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回壽衣選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/B7Uluj.jpeg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "披麻戴孝",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "披麻戴孝",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "披麻戴孝",
              "text": "披麻戴孝"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回壽衣選單"
              }
            },
        ]
      }
    },
    

    
  ]
}
    }
    end

def test_8 #禮車

      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    {
      "type": "bubble",
      "body": {
        "type": "box",
        "layout": "horizontal",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "選擇所需禮車型號",
            "gravity": "center",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
        
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/RhSJTK.jpeg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "123禮車",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "123禮車描述",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "123禮車",
              "text": "123禮車"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回孝服選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/S1FbUV.jpeg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "456禮車",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "456禮車描述",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "456禮車",
              "text": "456禮車"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回孝服選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/2lqszc.jpeg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "789禮車",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "789禮車描述",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "789禮車",
              "text": "789禮車"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回孝服選單"
              }
            },
        ]
      }
    }

    
  ]
}
    }
    end

 def test_9 #做七


{
   "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://d1942s60hw1xi2.cloudfront.net/images/6/060134/06013401.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "做七法事",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "做七為每七天做一次，因為相傳亡者去世後，每七天可以回來陽間一趟，瞭解自身於生前在陽世間的因果，順便讓亡者可以回陽世探望親人。\n\n1. 頭七：由兒子準備奠品。\n\n2. 三七：由出嫁女兒準備奠品。\n\n3. 滿七：由兒子準備奠品。",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求做七"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求做七"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回禮車選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
}
    end

    def test_10 #拜藥懺
       {
    "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://7.share.photo.xuite.net/kmc313127592/17d895e/14851221/789280969_m.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "拜藥懺",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "一般民間儀式來說，由於亡者生前帶有病痛往生時，往生之後仍然會有一樣的病痛。其立意乃在於憐憫為人子女者的一片孝心，也藉著這最後一次為親人親自煎藥、餵藥的機會來稍解子女們平常忙於工作而無法晨昏定省的奉侍父母的愧疚之心。",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求拜藥懺"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求拜藥懺"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回做七選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
} 
      
    end

    def test_11 #解冤親
      {
   "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://cf.shopee.tw/file/4ea67fdafd54e302aec481cd516affc8",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "解冤親",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "冤親債主，就是累世可能我們欠對方，也可能是對方欠我們，他們就可能成為冤親債主，會阻礙各項運途的發展。",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求解冤親"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求解冤親"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回拜藥籤選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
} 
    end

def test_12 #會場大小
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    {
      "type": "bubble",
      "body": {
        "type": "box",
        "layout": "horizontal",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "選擇所需會場的大小",
            "gravity": "center",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
        
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/04/14/6Rwpeg.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "靈前告別式",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "可容納約5~7人",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "靈前告別式",
              "text": "靈前告別式"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回解冤親選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkQhDfRM-KInVc-GG5uvCSZ4VNvUsM9XAm5_KC9WmiySUGPGqS&s"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "會館告別式",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "可容納約30~60人",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "會館告別式",
              "text": "會館告別式"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回解冤親選單"
              }
            },
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://pic.pimg.tw/tlec/3a12a53b632d599a27b3085b2a288c78.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "殯儀館告別式",
            #{}"align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "可容納約100人以上",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "殯儀館告別式",
              "text": "殯儀館告別式"
            }
          },
          {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回解冤親選單"
              }
            },
        ]
      }
    }

    
  ]
}
    }
    end

 def test_13 #花圈花籃 

 {
    "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://img.alicdn.com/imgextra/i3/0/TB1LG2fOFXXXXbEXXXXXXXXXXXX_!!0-item_pic.jpg_400x400.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "花圈花籃",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "凱優代訂",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求花圈花籃"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求花圈花籃"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回告別式選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
} 
      
    end 

def test_14 #祭品拜飯
{
    "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://pic.pimg.tw/livilife16888/1552392262-2817071482_n.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "祭品拜飯",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "凱優代訂",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求祭品拜飯"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求祭品拜飯"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回花圈花籃選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
} 
      
    end  

   def test_15 #交通車代訂
{
    "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://i.imgur.com/E4ddfST.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "交通車接送",
              "wrap": true,
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "凱優代訂",
                "wrap": true,
                "color": "#aaaaaa",
              
                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      }
            
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "有需求",
                "text": "有需求交通車"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "無需求",
                "text": "無需求交通車"
              }
            },
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "返回上一層",
                "text": "返回祭品拜飯選單"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
} 
      
    end     

def test_16
{   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://img.lovepik.com/element/40049/9500.png_860.png",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "感謝您對凱優的信任",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "請留下您的姓名及電話，專員會儘速與您聯繫(務必依照格式輸入)\n\n範例：金城武/0912345678",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              }
            ]
          }
        ]
      },
      

           
          ]
        }
        
      }
    }
end  
def test_17
{   
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://www.pptbest.com/d/file/p/2019/09-09/5a6ee6d7ea8230512017b35a326fe7fa.jpg",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "http://linecorp.com/"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "選購表單生成中....",
              "weight": "bold",
              "size": "xl"
            },
         {
        "type": "box",
        "layout": "vertical",
        "margin": "lg",
        "spacing": "md",
        "contents": [
          {
            "type": "box",
            "layout": "vertical",
            "spacing": "sm",
            "contents": [
              {
                "type": "text",
                "text": "按下送出生成表單",
                "wrap": true,
                #{}"color": "#aaaaaa",

                "size": "md",
                "flex": 1
              },
              
            ]
          }
        ]
      }

           
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            
            
            {
              "type": "button",
              #{}"style": "link",
              "height": "sm",
              "action": {
                "type": "message",
                "label": "送出",
                "text": "送出表單"
              }
            },
            
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
        
      }
    }
end  
#禮儀師團隊###############################################################
def member_1 
      {  
      "type": "flex",
      "altText": "this is a flex message",
      "contents": {
"type": "carousel",
  "contents": [
    
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/06/25/qBbuYM.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "禮儀師：金城武",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "服務地區：台北",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "選擇禮儀師",
              "text": "選擇金城武禮儀師"
            }
          },
          
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/06/25/8pkHBh.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "禮儀師：郭富城",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "服務地區：台中",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "選擇禮儀師",
              "text": "選擇郭富城禮儀師"
            }
          },
          
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/06/25/QHmiRo.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "禮儀師：劉德華",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "服務地區：高雄",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "選擇禮儀師",
              "text": "選擇劉德華禮儀師"
            }
          },
          
        ]
      }
    },
    {
      "type": "bubble",
      "hero": {
        "type": "image",
        "size": "full",
        "aspectRatio": "15:13",
        "aspectMode": "cover",
        "url": "https://upload.cc/i1/2021/06/25/5MvD1G.jpg"
      },
      "body": {
        "type": "box",
        "layout": "vertical",
        "spacing": "sm",
        "contents": [
          {
            "type": "text",
            "text": "禮儀師：王陽明",
            "align": "center",
            "wrap": true,
            "weight": "bold",
            "size": "xl"
          },
          {
            "type": "box",
            "layout": "baseline",
            "flex": 1,
            "contents": [
              {
                "type": "text",
                "text": "服務地區：台東",
                "align": "center",
                "wrap": true,
                #{}"weight": "bold",
                "size": "xl",
                "flex": 0
              },
              
            ]
          },
          
        ]
      },
      "footer": {
        "type": "box",
        "layout": "vertical",
        "spacing": "lg",
        "contents": [
          {
            "type": "button",
            "action": {
              "type": "message",
              "label": "選擇禮儀師",
              "text": "選擇王陽明禮儀師"
            }
          },
          
        ]
      }
    },
    

    
  ]
}
    }
    end
end

  