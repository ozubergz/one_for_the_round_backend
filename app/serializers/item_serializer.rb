class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :selections, :category_id
end
