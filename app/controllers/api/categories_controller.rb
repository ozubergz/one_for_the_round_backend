class Api::CategoriesController < ApplicationController
    
    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: { category: CategorySerializer.new(category) }
        else
            render json: {message: "Not Found"}, status: :service_unavailable
        end
    end

end
