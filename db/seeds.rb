# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["Soft Toy", "Board Game", "Figurine", "Puzzle", "Vehicle", "Card Game", "Book", "Block and Brick"]
features = ["Educational", "Baby Safe", "Collectable", "Interactive", "Companion App", "Environmentally Friendly"]

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "created #{category} category"
  end
end

if Feature.count == 0
  features.each do |feature|
    Feature.create(name: feature)
    puts "created #{feature} feature"
  end
end