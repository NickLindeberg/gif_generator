class GifsController < ApplicationController

  def index
    @gifs = Gif.joins(:category).order('categories.title')
  end

  def new
    @category = Category.new
  end
end
