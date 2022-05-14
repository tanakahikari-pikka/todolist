class CategoryController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_index_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private
        def category_params
            params.require(:category).permit(:name)
        end
end
