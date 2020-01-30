class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :selections
end
