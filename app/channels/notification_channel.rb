class NotificationChannel < ApplicationCable::Channel
    
    #subscribed method is for subscribing and streaming messages
    def subscribed
        stream_from 'notification_channel'
    end
end