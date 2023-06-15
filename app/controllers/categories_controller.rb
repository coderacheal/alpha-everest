class CategoriesController < ApplicationController

    def index
        @all_categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = current_user.categories.new(category_params)
        if @category.save
            redirect_to user_categories_path(user_id: current_user.id)
        else
            render :new
        end
    end
    

    private

    def category_params
        params.require(:category).permit(:name, :image)
    end
end
