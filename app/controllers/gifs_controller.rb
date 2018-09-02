class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def new
    @category = Category.new
  end

end
