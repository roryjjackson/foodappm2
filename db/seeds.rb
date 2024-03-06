# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create User for Testing

user1 = User.create!(email: "test1@test.com", password: "123456")


# Create tags
tag1 = Tag.create!(name: "Asian")
tag2 = Tag.create!(name: "Easy")
tag3 = Tag.create!(name: "Hard")

# Create recipes
recipe1 = Recipe.create!(name: "Dumplings", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)
recipe2 = Recipe.create!(name: "Pizza", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)
recipe3 = Recipe.create!(name: "Boeuf en croute", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)
recipe4 = Recipe.create!(name: "Noodles", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)
recipe5 = Recipe.create!(name: "Pasta", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)
recipe6 = Recipe.create!(name: "Wellington", description: "", instructions: "", prep_time: "", cook_time: "", user_id: 1)

# Associate tags with recipes through the join table
recipe1.tags << tag1
recipe2.tags << tag2
recipe3.tags << tag3
recipe4.tags << tag1
recipe5.tags << tag2  # Example of associating multiple tags with one recipe
recipe6.tags << tag3

puts "Recipes and tags created"
