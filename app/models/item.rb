class Item < ApplicationRecord
  belongs_to :category
  
  # has_many :item_options, dependent: :destroy
  # has_many :options, through: :item_options
end
