# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.create(name:    "Shelter 1",
               address: "6303 W Exposition Ave",
               city:    "Lakewood",
               state:   "CO",
               zip:     "80226")
Shelter.create(name:    "Shelter 2",
               address: "12322 Bohannon Blvd",
               city:    "Orlando",
               state:   "FL",
               zip:     "32824")
