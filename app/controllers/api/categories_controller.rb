class Api::CategoriesController < ApplicationController
    before_action :set_headers

    def index
        categories = Category.all
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

    # REST API expects exposer header, content-rage
    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Category.all.length}"
    end

end
