class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new 
  end

  def create 
    @category = Category.new(paramaters)

    if @category.save 
      redirect_to [:admin, :categories]
    end 
  end

  private

  def paramaters
    params.require(:category).permit(
      :name
    )
  end 

end