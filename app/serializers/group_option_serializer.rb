class GroupOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_id, :required
  # has_one :item
  # has_one :option
end
