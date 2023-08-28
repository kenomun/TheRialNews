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
  name: "Brayan",
  email: "admin@example.com",
  password: "123456",
  password_confirmation: "123456",
  role: :admin,
  phone: Faker::PhoneNumber.cell_phone,
  age: Faker::Number.between(from: 18, to: 80)
)

# Crea 6 nuevos posts para el usuario
6.times do
    title = Faker::Lorem.sentence(word_count: 3)
    description = Faker::Lorem.paragraph(sentence_count: 3)
    
    post = user.posts.create!(
      title: title,
      description: description
    )
    
    # Descarga una imagen aleatoria de Internet
    image_url = Faker::LoremFlickr.image(size: "300x200", search_terms: ['nature', 'landscape'])
    image_filename = File.basename(image_url)
    image = URI.open(image_url)
    
    # Adjunta la imagen al post
    post.image.attach(io: image, filename: image_filename, content_type: 'image/jpeg')
  end
  
  puts "usuario creado y posts creados exitosamente!"
  puts "Usuario: admin@example.com"
  puts "password: 123456"
