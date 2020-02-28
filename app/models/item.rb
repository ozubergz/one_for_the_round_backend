class Item < ApplicationRecord
  
  belongs_to :category
  
  has_many :orders, dependent: :destroy
  
  # serialize :selections, Array
end
