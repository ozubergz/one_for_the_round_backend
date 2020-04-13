class GroupOption < ApplicationRecord
  has_many :options, dependent: :destroy
  
  has_many :item_group_options, dependent: :destroy
  # has_many :items, through: :item_group_options
end
