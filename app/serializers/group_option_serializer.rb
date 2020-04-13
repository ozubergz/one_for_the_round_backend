class GroupOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_id, :required
  has_many :options
end
