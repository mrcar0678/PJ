class CronController < ApplicationController
  # 建議用 skip_before_action 去除驗證，讓 cron-job.org 可直接訪問
  skip_before_action :verify_authenticity_token

  def run
    begin
      # 在這裡寫你想要排程執行的程式碼
      puts "🔔 Cron job triggered at #{Time.current}"

      # 例：User.send_daily_email 或你的背景工作
    rescue => e
      Rails.logger.error("⚠️ Cron job failed: #{e.message}")
      # 即使錯誤，也不拋出
    end

    # 無論是否成功，都回傳 HTTP 200 OK
    render plain: "OK", status: :ok
  end
end
