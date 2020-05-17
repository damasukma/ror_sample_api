class CatSerializer < ActiveModel::Serializer
  attributes :id,:name, :person

  def person
    {
      id: self.object.person.id,
      name: self.object.person.name
    }
  end
end
