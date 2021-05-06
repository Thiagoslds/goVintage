# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all

puts 'Creating user...'

johndoe = User.new(
  name: "John Doe",
  email: "john@doe.com",
  password: "123456",
  address: "Rua dos Bobos, numero 0"
  )
johndoe.save!

maryjane = User.new(
  name: "Mary Jane",
  email: "mary@jane.com",
  password: "123456",
  address: "Love Shack, 100"
  )
maryjane.save!

# puts 'Creating products...'
# sofavintage = Product.new(
#   image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
#   user_id: 1, name: "Sofa Vintage",
#   description: "Novinho em folha ",
#   category: "Sofas", price: 200.00)
# sofavintage.save!

# poltronavermelha = Product.new(
#   image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
#   user_id: 2, name: "Poltrona Vermelha",
#   description: "Com marcas e manchas",
#   category: "Poltronas", price: 300.00)
# poltronavermelha.save!

puts 'Finished!'


