class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :number_of_items
  has_many :items
end
