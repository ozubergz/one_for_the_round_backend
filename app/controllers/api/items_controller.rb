class Api::ItemsController < ApplicationController
    before_action :set_headers

    def index
        items = Item.all
        render json: items 
    end

    def show
        item = Item.find_by(id: params[:id])
        if item
            render json: item
        else
            render json: {message: "Not Found"}, status: :service_unavailable
        end
    end

    # REST API expects exposer header, content-rage
    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Item.all.length}"
    end

    
end
