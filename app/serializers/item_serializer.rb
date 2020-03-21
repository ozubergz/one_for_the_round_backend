class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :category_id, :item_options
  
  # has_many :item_options

  def item_options
    object.item_options.map { |item_option|
      {
        id: item_option.id,
        name: item_option.description,
        options: item_option.options.collect { |option|
          option.slice(:id, :name, :price_variation)
        }
      }
    }
  end
  
end
