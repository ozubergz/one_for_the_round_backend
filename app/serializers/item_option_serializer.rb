class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_id, :required, :options
  # has_one :item
end
