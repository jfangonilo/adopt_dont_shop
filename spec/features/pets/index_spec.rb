require 'rails_helper'

describe "As a user, when I visit the pet index page,", type: :feature do
  before :each do
    @shelter_1 = Shelter.create(
      name:     "Shelter 1",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )
    @shelter_2 = Shelter.create(
      name:     "Shelter 2",
      address:  "12322 Bohannon Blvd",
      city:     "Orlando",
      state:    "FL",
      zip:      "32824"
    )

    @pet_1 = Pet.create(
      image:            "string 1",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "male",
      shelter_id:       @shelter_1.id
    )
    @pet_2 = Pet.create(
      image:            "string 2",
      name:             "Pepper",
      approximate_age:  4,
      sex:              "female",
      shelter_id:       @shelter_2.id
    )
  end

  it "I can see all pets and their image, name, age, sex, name of shelter" do
    visit "/pets"

    expect(page).to have_content("string 1")
    expect(page).to have_content("Seamus")
    expect(page).to have_content(8)
    expect(page).to have_content("male")
    expect(page).to have_content("Shelter 1")

    expect(page).to have_content("string 2")
    expect(page).to have_content("Pepper")
    expect(page).to have_content(4)
    expect(page).to have_content("female")
    expect(page).to have_content("Shelter 2")
  end
end
