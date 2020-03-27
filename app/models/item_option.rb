class ItemOption < ApplicationRecord
  belongs_to :item
  serialize :options, Array
end
