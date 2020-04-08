class OptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :input_type
  has_one :item_option
end
