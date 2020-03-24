class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_id
  has_many :options
end
