class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_id, :options
  # has_one :item
end
