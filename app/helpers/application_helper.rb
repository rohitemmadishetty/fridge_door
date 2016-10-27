module ApplicationHelper
  def weather
    @last_weather = Weather.most_recent
    if (!@last_weather ||
        @last_weather.created_at < 10.minutes.ago)
      @last_weather = Weather.new($weather_service.weather)
      @last_weather.save
    end

    @last_weather
  end

  def nav_link_to(text, path)
    nav_item_classes = %w(nav-item)
    nav_item_classes << 'active' if current_page?(path)

    content_tag :li, class: nav_item_classes do
      link_to text, path, class: 'nav-link'
    end
  end
end
