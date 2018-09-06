class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    if category.save
      flash[:success] = "You created #{category.title}"
      redirect_to categories_path
    else
      flash.notice = "Category already exists!"
      redirect_to new_category_path
    end
  end

  def show
    @category = Category.find(params[:id])
    @gifs = @category.gifs
    end

  def edit

  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
      flash[:success] = "#{@category.title} updated!"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy

    flash[:success] = "Category Deleted!"
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end

end
