class Item < ApplicationRecord
  belongs_to :category
  
  has_many :item_group_options, dependent: :destroy
  has_many :group_options, through: :item_group_options
end
