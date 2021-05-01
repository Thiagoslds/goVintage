# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

puts 'Creating products...'
sofavintage = Product.new(user_id: 1, name: "Sofa Vintage", description: "Novinho em folha ", category: "Sofas", price: 200.00)
sofavintage.save!

poltronavermelha = Product.new(user_id: 2, name: "Poltrona Vermelha", description: "Com marcas e manchas", category: "Poltronas", price: 300.00)
poltronavermelha.save!
puts 'Finished!'
