class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :category_id
  has_many :item_options
  
end
