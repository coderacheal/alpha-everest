class ExpensesController < ApplicationController
  before_action :set_category, only: %i[index new create]

  def index
    @expenses = @category.expenses.order(created_at: :desc)
    @total_amount = @expenses.sum(:amount)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = @category.expenses.build(expense_params)
    @expense.save
    if @expense.save
      @category.expenses << @expense

      redirect_to user_category_expenses_path
    else
      render :new
    end
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount).merge(author_id: current_user.id)
  end
end
