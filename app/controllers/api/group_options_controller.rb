class Api::GroupOptionsController < ApplicationController
    before_action :set_headers

    def index
        # item_options = ItemOption.order(sort).all
        # render json: isFiltered ? filtered_item_options : all_item_options
    
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

    # def update
    #     item_option = ItemOption.find(params[:id])
    #     if item_option.update(item_option_params)
    #         render json: item_option
    #     else
    #         render json: { error: "Update failed" }
    #     end
    # end

    # def destroy
    #     item_option = ItemOption.find(params[:id])
    #     item_option.destroy
    #     render json: item_option
    # end

    # def isFiltered
    #     !!params[:filter] ? !!params[:filter]['item_option'] : false
    # end

    # def filtered_item_options
    #     item_options = JSON.parse(params[:filter])['item_option']
    #     prop_name = JSON.parse(params[:sort])[0]
    #     isAscend ? 
    #         item_options.sort_by { |item| item[prop_name] }
    #             :
    #         item_options.sort_by { |item| item[prop_name] }.reverse  
    # end

    # def isAscend
    #     JSON.parse(params[:sort])[1] == 'ASC'
    # end

    # def all_item_options
    #     ItemOption.order(sort)[range[0]..range[1]];
    # end

    # def range
    #     # parse query params to get range of array
    #     range = params[:range] ? JSON.parse(params[:range]) : [0, GroupOption.all.length]
    # end

    # def sort
    #     # parse query params or assign with 'id DESC'
    #     sort = params[:sort] ? JSON.parse(params[:sort]).join(' ') : 'id ASC'
    # end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{GroupOption.all.length}"
    end

    private
    
    def group_option_params
        params.require(:group_option).permit(:name, :required)
    end
 
end
