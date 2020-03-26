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

    def create
        option = Option.create(option_params)
        if option.valid?
            render json: option, status: :created
        else
            render json: { errors: option.errors.full_messages }
        end
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Option.all.length}"
    end

    private

    def option_params
        params.require(:option).permit(:name, :price, :input_type)
    end
    
end
