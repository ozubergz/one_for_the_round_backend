class Api::OptionsController < ApplicationController

    def create
        option = Option.create(option_params)
        if option.valid?
            render json: option, status: :created
        else
            render json: { errors: option.errors.full_messages }
        end
    end

    

    def destroy
        option = Option.find(params[:id])
        option.destroy
        render json: option
    end

    private

    def option_params
        params.require(:option).permit(:item_option_id, :name, :price, :input_type)
    end
end
