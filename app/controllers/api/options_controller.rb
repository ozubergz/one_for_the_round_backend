class Api::OptionsController < ApplicationController

    def create
        option = Option.create(option_params)
        if option.valid?
            render json: option, status: :created
        else
            render json: { errors: option.errors.full_messages }
        end
    end

    def update
        option = Option.find(params[:id])
        if option.update(option_params)
            render json: option
        else
            render json: { error: "Update failed" }
        end
    end

    def destroy
        option = Option.find(params[:id])
        option.destroy
        render json: option
    end

    private

    def option_params
        params.require(:option).permit(:name, :price, :input_type, :group_option_id)
    end
end
