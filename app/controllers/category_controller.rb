class CategoryController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
    @list = List.new
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
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to category_index_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to category_index_path
    else
      @categories = Category.all
      render :index
    end
  end

  private
        def category_params
            params.require(:category).permit(:name)
        end
end
