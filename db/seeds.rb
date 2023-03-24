# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@knife_1 = Knife.create(blade: 'steel', handle: 'wood')
@knife_2 = Knife.create(blade: 'metal', handle: 'oak')
@knife_3 = Knife.create(blade: 'damascus', handle: 'wire')
@knife_4 = Knife.create(blade: 'bronze', handle: 'ivory')
@knife_5 = Knife.create(blade: 'stainless', handle: 'micarta')
