class NotificationsController < ApplicationController
    def index
        ActionCable.server.broadcast('notification_channel', 'Customer has made an order.')
    end
end
