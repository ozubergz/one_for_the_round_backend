class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :price
  has_many :item_options
end
