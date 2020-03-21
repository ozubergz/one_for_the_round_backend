class Option < ApplicationRecord
  belongs_to :input_type
  belongs_to :item_option
end
