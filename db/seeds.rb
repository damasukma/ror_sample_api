# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#clean up rows
Person.destroy_all
Cat.destroy_all
#seed data
person_list = [
  ['Foo', 20],
  ['Bar', 23],
  ['FooBar', 25],
]

cat_list = [
  ['Catty', 1, 'salmon'],
  ['Cimunk', 1, 'wiskas'],
  ['Kubis', 2, 'wiskas'],
]

person = []
person_list.each_with_index do |(name, age), i|
  person[i] = Person.create({name: name, age: age})
  person[i].cats.create({name: cat_list[i][0], age: cat_list[i][1], favorite_food: cat_list[i][2]})
end
