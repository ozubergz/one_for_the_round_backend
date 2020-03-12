class User < ApplicationRecord
    #validates users's password
    has_secure_password

    validates :email, uniqueness: { case_sensitive: false }

    has_many :orders, dependent: :destroy
    has_many :items, through: :orders
end
