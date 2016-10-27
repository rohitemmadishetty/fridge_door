class HomeController < ApplicationController
  def index
    @items = Note.all + Todo.all + Weather.all

    @items.sort_by!{|item| item.created_at}.reverse!
  end
end
