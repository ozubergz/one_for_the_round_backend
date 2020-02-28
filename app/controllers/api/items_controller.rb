class Api::ItemsController < ApplicationController
    before_action :set_headers

    def index
        items = Item.all
        render json: items 
    end

    # REST API expects exposer header, content-rage
    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Category.all.length}"
    end
end
