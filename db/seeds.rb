# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# Survivor.delete_all

10.times do
  Survivor.create name: Faker::Name.name, age: Faker::Number.number(digits: 2), gender: Faker::Gender.type, last_latitude: Faker::Address.latitude, last_longitude: Faker::Address.longitude
end
