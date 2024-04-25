# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Créer des villes
City.create(city_name: 'Paris')
City.create(city_name: 'Lyon')
City.create(city_name: 'Marseille')

# Créer des chiens
Dog.create(name: 'Fido', city: City.first)
Dog.create(name: 'Buddy', city: City.second)
Dog.create(name: 'Charlie', city: City.third)

# Créer des promeneurs
Dogsitter.create(name: 'Alice', city: City.first)
Dogsitter.create(name: 'Bob', city: City.second)
Dogsitter.create(name: 'Charlotte', city: City.third)

# Créer des promenades
Stroll.create(dog: Dog.first, dogsitter: Dogsitter.first)
Stroll.create(dog: Dog.second, dogsitter: Dogsitter.second)
Stroll.create(dog: Dog.third, dogsitter: Dogsitter.third)