class Api::CategoriesController < ApplicationController
    
    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: { category: CategorySerializer.new(category) }
    end

end
