class Api::ItemOptionsController < ApplicationController
    before_action :set_headers

    def index
        item_options = ItemOption.all
        render json: item_options
    end

    def show
        item_option = ItemOption.find(params[:id])
        render json: item_option
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{ItemOption.all.length}"
    end
    
end
