class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :price, :group_options
  
  def group_options
    self.object.group_options.map { |group_option|
      { 
        id: group_option.id,
        name: group_option.name,
        required: group_option.required,
        options: group_option.options
      }
    }
  end
  
end
