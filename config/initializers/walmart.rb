config = Rails.application.config_for(:walmart)

$walmart_api = WalmartApi.new(config["api_key"])
