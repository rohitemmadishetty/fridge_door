class WalmartController < ApplicationController
  def index
    @items = $walmart_api.trends
  rescue
    @items = []
  end
end
