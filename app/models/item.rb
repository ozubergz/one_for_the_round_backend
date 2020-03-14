class Item < ApplicationRecord
  belongs_to :category
    
  # serialize :selections, Array
end
