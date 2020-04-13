class Option < ApplicationRecord
  has_many :item_options, dependent: :destroy
  has_many :items, through: :item_options
end
