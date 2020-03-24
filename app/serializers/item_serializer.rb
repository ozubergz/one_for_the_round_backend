class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :price, :item_options
    
  # belongs_to :category

  def item_options
    object.item_options.map { |item_option|
      {
        id: item_option.id,
        item_id: item_option.item_id,
        name: item_option.name,
        options: item_option.options.collect { |option|
          { 
            id: option.id,
            name: option.name,
            price: option.price,
            input_type: option.input_type.name
          }
        }
      }
    }
  end
  
end
