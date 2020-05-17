class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :cats

  def cats
    self.object.cats.map do |cat|
      {
        name: cat.name,
        age: cat.age,
        favorite_food: cat.favorite_food
      }
    end
  end

end
