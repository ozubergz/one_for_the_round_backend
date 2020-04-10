class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :price, :item_options
  
  def item_options
    self.object.item_options.map { |item_option|
      { 
        id: item_option.id,
        item_id: item_option.item_id,
        name: item_option.name,
        required: item_option.required,
        options: item_option.options
      }
    }
  end
  
  # has_many :item_options
end
