class Api::GroupOptionsController < ApplicationController
    before_action :set_headers

    def index
        group_options = GroupOption.all
        render json: group_options
    end

    def show
        group_option = GroupOption.find(params[:id])
        render json: group_option
    end

    def create
        group_option = GroupOption.create(group_option_params)
        if group_option.valid?
            item_group_option = ItemGroupOption.create(item_id: params[:item_id], group_option_id: group_option.id);
            render json: item_group_option, status: :created
        else
            render json: { errors: group_option.errors.full_messages }
        end
    end

    def update
        group_option = GroupOption.find(params[:id])
        if group_option.update(group_option_params)
            render json: group_option
        else
            render json: { error: "Update failed" }
        end
    end

    def destroy
        group_option = GroupOption.find(params[:id])
        group_option.destroy
        render json: group_option
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{GroupOption.all.length}"
    end

    private
    
    def group_option_params
        params.require(:group_option).permit(:name, :required)
    end
 
end
