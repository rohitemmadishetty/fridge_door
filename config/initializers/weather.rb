config = Rails.application.config_for(:weather)
$weather_service = WeatherService.new(config)
