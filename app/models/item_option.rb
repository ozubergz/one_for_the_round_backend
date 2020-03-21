class ItemOption < ApplicationRecord
  belongs_to :item
  belongs_to :input_type
  has_many :options, dependent: :destroy
end
