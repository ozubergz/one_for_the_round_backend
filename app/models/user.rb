class User < ApplicationRecord
    
    #validates users's password
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    
end
