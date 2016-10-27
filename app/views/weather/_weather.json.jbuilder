json.extract! weather, :id, :temperature, :location, :description, :icon_url, :created_at, :updated_at
json.url weather_url(weather, format: :json)