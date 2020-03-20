class ItemOptionSerializer < ActiveModel::Serializer
  attributes :id, :description, :options

  def options
    self.object.options.map { |option|
      {
        id: option.id,
        name: option.name,
        price_variation: option.price_variation
      }
    }
  end

end
