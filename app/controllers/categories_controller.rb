class CategoriesController < ApplicationController

  def index
    @all_categories = current_user.categories
    @category_total_amounts = {}

    @all_categories.each do |category|
      total_amount = category.expenses.sum(:amount)
      @category_total_amounts[category] = total_amount
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)
    if @category.save
      redirect_to categories_path(user_id: current_user.id)
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end
end
