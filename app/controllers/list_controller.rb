class ListController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @category.save
      redirect_to category_index_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end
    private

    def list_params
      params.require(:list).permit(:name,:caption)
    end
end
