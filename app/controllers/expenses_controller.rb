class ExpensesController < ApplicationController
    def index
      @category = Category.find(params[:category_id])
      @expenses = @category.expenses
    end

    def new
        @category = Category.find(params[:category_id])
        @expense = Expense.new
    end

    def create
        @category = Category.find(params[:category_id])
        @expense = @category.expenses.build(expense_params)
        if @expense.save
            redirect_to user_category_expenses_path
        else
            render :new
        end
    end

    private

    def expense_params
        params.require(:expense).permit(:name, :amount).merge(author_id: current_user.id)
    end
  end
  

