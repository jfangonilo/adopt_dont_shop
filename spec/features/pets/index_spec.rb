require 'rails_helper'

describe "As a user, when I visit the pet index page," do
  before :each do
    @shelter_1 = Shelter.create!(
      name:     "Shelter 1",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )
    @shelter_2 = Shelter.create!(
      name:     "Shelter 2",
      address:  "12322 Bohannon Blvd",
      city:     "Orlando",
      state:    "FL",
      zip:      "32824"
    )

    @pet_1 = @shelter_1.pets.create!(
      image:            "https://www.allthingsdogs.com/wp-content/uploads/2018/12/Husky-Names-Feature.jpg",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "male",
    )
    @pet_2 = @shelter_2.pets.create!(
      image:            "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234710/Chihuahua-On-White-03.jpg",
      name:             "Pepper",
      approximate_age:  4,
      sex:              "female",
    )
  end

  it "I can see all pets and their image, name, age, sex, name of shelter" do
    visit "/pets"

    within "#pet-#{@pet_1.id}" do
      expect(page).to have_css "img[src *= 'Husky-Names-Feature.jpg']"
      expect(page).to have_content "Seamus"
      expect(page).to have_content 8
      expect(page).to have_content "male"
      expect(page).to have_content "Shelter 1"
    end

    within "#pet-#{@pet_2.id}" do
      expect(page).to have_css "img[src *= 'Chihuahua-On-White-03.jpg']"
      expect(page).to have_content "Pepper"
      expect(page).to have_content 4
      expect(page).to have_content "female"
      expect(page).to have_content "Shelter 2"
    end
  end
end
