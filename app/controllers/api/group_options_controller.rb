class Api::GroupOptionsController < ApplicationController
    # before_action :set_headers

    # def index
    #     # item_options = ItemOption.order(sort).all
    #     render json: isFiltered ? filtered_item_options : all_item_options
    # end

    # def show
    #     item_option = ItemOption.find(params[:id])
    #     render json: item_option
    # end

    # def create
    #     item_option = ItemOption.create(item_option_params)
    #     if item_option.valid?
    #         render json: item_option, status: :created
    #     else
    #         render json: { errors: item_option.errors.full_messages }
    #     end
    # end

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
    #     range = params[:range] ? JSON.parse(params[:range]) : [0, ItemOption.all.length]
    # end

    # def sort
    #     # parse query params or assign with 'id DESC'
    #     sort = params[:sort] ? JSON.parse(params[:sort]).join(' ') : 'id ASC'
    # end

    # def set_headers
    #     response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
    #     response.headers['Content-Range'] = "0-10/#{ItemOption.all.length}"
    # end

    # private
    
    # def item_option_params
    #     params.require(:item_option).permit(:name, :required, :item_id)
    # end
 
end
