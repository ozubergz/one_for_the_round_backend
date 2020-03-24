class OptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :input_type
  
  def input_type
    { 
      id: self.object.input_type.id,
      name: self.object.input_type.name
    }
  end
end
