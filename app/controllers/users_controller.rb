class UsersController < ApplicationController
  before_action :authenticate_user!

  def index;
    @all_categories = Category.all
  end

end
