class Api::ItemOptionsController < ApplicationController

    def index
        item_options = ItemOption.all
        render json: item_options
    end
    
end
