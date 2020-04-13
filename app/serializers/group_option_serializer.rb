class GroupOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :required
  has_many :options
end
