class ItemOption < ApplicationRecord
  belongs_to :item
  has_many :options
end
