class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :price, :item_options
  
  def item_options
    self.object.item_options.map { |item_option|
      {
        id: item_option.id,
        name: item_option.name,
        item_id: item_option.item_id,
        options: item_option.options
      }
    }
  end

end
