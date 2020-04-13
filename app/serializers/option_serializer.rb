class OptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :input_type, :group_option_id
end
