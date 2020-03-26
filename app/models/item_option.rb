class ItemOption < ApplicationRecord
  belongs_to :item, dependent: :destroy
  serialize :options, Array
end
