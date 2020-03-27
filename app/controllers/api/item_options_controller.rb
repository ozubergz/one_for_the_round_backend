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

    def create
        item_option = ItemOption.create(item_option_params)
        if item_option.valid?
            render json: item_option, status: :created
        else
            render json: { errors: item_option.errors.full_messages }
        end
    end

    def destroy
        item_option = ItemOption.find(params[:id])
        item_option.destroy
        render json: item_option
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{ItemOption.all.length}"
    end

    private
    
    def item_option_params
        params.require(:item_option).permit(:name, :item_id, options: [:name, :price, :input_type])
    end
 
end
