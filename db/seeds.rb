# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Animal.create!({name: "Psalmopoeus Irmina", sex: "male", multiplication: true, bodyLength: 1.0, molt: 2, buyDate: Date.today, status: true})
Animal.create!({name: "Avicularia Versicolor", sex: "female", multiplication: false, bodyLength: 5.0, molt: 15, buyDate: Date.today, status: true})