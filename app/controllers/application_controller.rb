class ApplicationController < ActionController::API 
    
    #make token
    def encode_token(payload)
        JWT.encode(payload, jwt_secret, 'HS256')
    end

    def jwt_secret
        ENV['JWT_PASS']
    end

    
    
end
