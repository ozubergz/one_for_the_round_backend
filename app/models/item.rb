class Item < ApplicationRecord
  belongs_to :category
  has_many :item_options
end
