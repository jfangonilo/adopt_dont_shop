shelter_1 = Shelter.create(
  name:     "Winterfell",
  address:  "6303 W Exposition Ave",
  city:     "Lakewood",
  state:    "CO",
  zip:      "80226"
)
shelter_2 = Shelter.create(
  name:     "Sunspear",
  address:  "12322 Bohannon Blvd",
  city:     "Orlando",
  state:    "FL",
  zip:      "32824"
)

shelter_1.pets.create(
  image:            "https://www.allthingsdogs.com/wp-content/uploads/2018/12/Husky-Names-Feature.jpg",
  name:             "Seamus",
  approximate_age:  8,
  sex:              "male",
)
shelter_1.pets.create(
  image:            "https://www.catster.com/wp-content/uploads/2018/03/Calico-cat.jpg",
  name:             "Miso",
  approximate_age:  2,
  sex:              "female",
)

shelter_2.pets.create(
  image:            "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234710/Chihuahua-On-White-03.jpg",
  name:             "Pepper",
  approximate_age:  4,
  sex:              "female",
)
shelter_2.pets.create(
  image:            "https://www.catster.com/wp-content/uploads/2018/01/Orange-tabby-cat-sleeping-with-eyes-closed.jpg",
  name:             "King",
  approximate_age:  3,
  sex:              "male",
)
