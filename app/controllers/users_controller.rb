class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_categories = Category.all
    @category_total_amounts = {}

    @all_categories.each do |category|
      total_amount = category.expenses.sum(:amount)
      @category_total_amounts[category] = total_amount
    end
  end
end
