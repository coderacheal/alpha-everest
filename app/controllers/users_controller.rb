class UsersController < ApplicationController
  # def welcome
  #   puts "User signed in: #{user_signed_in?}"
  #   return unless user_signed_in?

  #   redirect_to user_categories_path(user_id: current_user.id)
  # end

  enum role: { admin: 'admin' }

  before_action :authenticate_user!

  # def index
  #   @all_categories = Category.all
  #   @category_total_amounts = {}

  #   @all_categories.each do |category|
  #     total_amount = category.expenses.sum(:amount)
  #     @category_total_amounts[category] = total_amount
  #   end
  # end
end
