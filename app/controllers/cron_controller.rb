class CronController < ApplicationController
  skip_before_action :verify_authenticity_token

  def run
    begin
      # 👇 在這裡放你的排程邏輯
      Rails.logger.info "🔔 Cron job triggered at #{Time.current}"
    rescue => e
      Rails.logger.error("⚠️ Cron job failed: #{e.message}")
      # 不 raise error，確保回傳 200
    end

    render plain: "OK", status: :ok
  end

  def health
    render plain: "OK", status: :ok
  end
end

