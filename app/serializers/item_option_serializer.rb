class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :description, :required
  has_many :options

end
