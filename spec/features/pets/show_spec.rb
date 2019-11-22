require 'rails_helper'

describe "When I visit /pets/:id," do
  before :each do
    shelter_1 = Shelter.create!(
      name:     "Winterfell",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )

    pet = shelter_1.pets.create!(
      image:            "https://www.allthingsdogs.com/wp-content/uploads/2018/12/Husky-Names-Feature.jpg",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "male",
    )

    visit "/pets/#{pet.id}"
  end

  it "I see the pet with that id" do
    expect(page).to have_css "img[src *= 'Husky-Names-Feature.jpg']"
    expect(page).to have_content "Seamus"
    expect(page).to have_content 8
    expect(page).to have_content "male"
  end
end
