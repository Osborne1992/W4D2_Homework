# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.delete_all
Country.create!(name: "Scotland", size: "77933", population: "5327700", language: "English" )
Country.create!(name: "England", size: "130279", population: "53012456", language: "English" )
Country.create!(name: "Spain", size: "505990", population: "46439864", language: "Spanish" )
Country.create!(name: "Japan", size: "377944", population: "126919659", language: "Japanese" )

# flag_image:text size:integer population:integer language:string