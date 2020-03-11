class Api::CategoriesController < ApplicationController
    before_action :set_headers

    def index
        categories = Category.order(sort).all[range[0]..range[1]]
        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category
        else
            render json: {message: "Not Found"}, status: :service_unavailable
        end
    end

    def create
        category = Category.create(category_params)
        if category.valid?
            render json: category, status: :created
        else
            render json: { errors: category.errors.full_messages }
        end
    end

    def update
        category = Category.find_by(id: params[:id])
        if category.update(category_params)
            render json: category
        else
            render json: {error: 'Update failed'}
        end
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy
        render json: category
    end

    def sort
        # parse query params or assign with 'id DESC'
        sort = params[:sort] ? JSON.parse(params[:sort]).join(' ') : 'id DESC'
        sort
    end

    def range
        # parse query params or assing with array of range
        range = params[:range] ? JSON.parse(params[:range]) : [0, 9]
        range
    end

    def set_headers
        # REST API expects exposer header, content-rage
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Category.all.length}"
    end

    private

    def category_params
        params.require(:category).permit(:name, items: [:id, :name, :description, :price, :selections, :category_id])
    end

end
