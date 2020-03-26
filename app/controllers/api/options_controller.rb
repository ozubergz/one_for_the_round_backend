class Api::OptionsController < ApplicationController
    before_action :set_headers
    
    def index
        options = Option.all
        render json: options
    end

    def show
        option = Option.find(params[:id])
        render json: option
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Option.all.length}"
    end
end
