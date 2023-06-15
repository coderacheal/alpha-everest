class ExpensesController < ApplicationController
    def index
      @category = Category.find(params[:category_id])
      @expenses = @category.expenses
    end

    def new
    end
  end
  

