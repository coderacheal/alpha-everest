class CategoriesController < ApplicationController

    def index
        current_user
    end

    def create
    end

    def new
        @category = Category.new
    end
    
end
