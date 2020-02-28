class ApplicationController < ActionController::API 
    # before_action :authorized

    #make token
    def encode_token(payload)
        JWT.encode(payload, jwt_secret, 'HS256')
    end

    def jwt_secret
        ENV['JWT_PASS']
    end

    #get token from Authorization header
    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        #check if token is in the Authorization header
        if auth_header
            token = auth_header
            begin
                #decode token
                JWT.decode(token, jwt_secret, true, {algorith: 'HS256'})
                # JWT.decode => [{user: user.id}, "alg" => 'HS256']
            rescue JWT::DecodeError 
            #if server receives a bad token return nil instead of 500 server error
                nil
            end
        end
    end

    #check if there's current user
    def current_user
        #check if token has been decoded
        if decoded_token
            #when token has been decoded find the user by id
            user_id = decoded_token[0]['user_id']
            user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        # true or false if there's current user
        !!current_user
    end

end
