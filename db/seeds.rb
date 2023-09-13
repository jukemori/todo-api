# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Task.destroy_all

# Create 3 random tasks
5.times do
  Task.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    done: [true, false].sample
  )
end

puts "5 random tasks created!"
