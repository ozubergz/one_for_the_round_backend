class Api::ItemsController < ApplicationController
    before_action :set_headers

    def index        
        render json: isFiltered ? filter_items : all_items
    end

    def show
        item = Item.find_by(id: params[:id])
        if item
            render json: item
        else
            render json: { message: "Not Found" }, status: :service_unavailable
        end
    end

    def create
        item = Item.create(item_params)
        if item.valid?
            render json: item, status: :created
        else
            render json: { errors: item.errors.full_messages }
        end
    end

    def update
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: item
        else
            render json: {error: 'Update failed'}
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: item
    end

    def filter_items
        items = JSON.parse(params[:filter])['items']
        prop_name = JSON.parse(params[:sort])[0]
        isAscend ? 
            items.sort_by { |item| item[prop_name] }
                :
            items.sort_by { |item| item[prop_name] }.reverse  
    end

    def all_items
        Item.includes(:category).order(sort)[range[0]..range[1]];
    end

    def isAscend
        JSON.parse(params[:sort])[1] == 'ASC'
    end

    def isFiltered
        !!params[:filter]['items']
    end

    def sort
         sort = params[:sort] ? JSON.parse(params[:sort]).join(' ') : 'id ASC'
    end

    def range
        # parse query params to get range of array
        range = params[:range] ? JSON.parse(params[:range]) : [0, Item.all.length]
    end

    # REST API expects exposer header, content-rage
    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Item.all.length}"
    end

    private
    
    def item_params
        params.require(:item).permit(:name, :description, :price, :category_id)
    end
    
end
