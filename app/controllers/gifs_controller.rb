class GifsController < ApplicationController

  def index
    @gifs = Gif.joins(:category).order('categories.title')
  end

  def create
    gif = Gif.new(gif_params)
    if gif.save
      flash[:success] = "You created a new gif!"
      redirect_to gifs_path
    else
      flash.notice = "Gif already exists!"
      redirect_to new_gif_path
    end
  end

  def new
    @gif = Gif.new
  end


  private

  def gif_params
    params.require(:gif).permit(:image)
  end
end
