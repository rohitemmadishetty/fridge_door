require 'open-uri'
require 'json'

class WalmartApi
  def initialize(key)
    @api_key = key
  end

  def trends
    url = "http://api.walmartlabs.com/v1/trends?format=json&apiKey=#{@api_key}"

    results = JSON.parse(open(url).read)
    items = results["items"]
    sorted_items = items.sort_by{|item| item["salePrice"]}
    sorted_items.map{|item| {name: item["name"], price: item["salePrice"], thumbnail_url: item["thumbnailImage"]} }
  end
end

