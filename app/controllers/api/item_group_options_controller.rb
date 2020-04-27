class Api::ItemGroupOptionsController < ApplicationController

    def create
        item_group_option = ItemGroupOption.create(item_group_option_params)
        if item_group_option.valid?
            render json: item_group_option, status: :created
        else
            render json: {errors: item_group_option.errors.full_messages}
        end
    end

    private
    
    def item_group_option_params
        params.require(:item_group_option).permit(:item_id, :group_option_id)
    end
end
