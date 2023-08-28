# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# Crea un usuario con un rol específico
user = User.create!(
  name: "Usuario Ejemplo",
  email: "usuario@example.com",
  password: "password",
  password_confirmation: "password",
  role: 2,
  phone: Faker::PhoneNumber.cell_phone,
  age: Faker::Number.between(from: 18, to: 80)
)

# Crea 6 nuevos posts para el usuario
6.times do
  title = Faker::Lorem.sentence(word_count: 3)
  description = Faker::Lorem.paragraph(sentence_count: 3)
  
  user.posts.create!(
    title: title,
    description: description,
    user: user
  )
end

puts "Seeds creados exitosamente!"
