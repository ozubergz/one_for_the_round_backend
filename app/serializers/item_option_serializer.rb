class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :description, :input_type, :required
  # has_many :options

end
