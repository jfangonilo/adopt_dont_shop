require 'rails_helper'

describe "pets index page", type: :feature do
  before :each do
    @shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")
    @shelter_2 = Shelter.create(name: "Shelter 2",
      address: "12322 Bohannon Blvd",
      city:    "Orlando",
      state:   "FL",
      zip:     "32824")

    @pet_1 = Pet.create(image: "string",
        name:             "Seamus",
        approximate_age:  8,
        sex:              "M",
        shelter_id:       @shelter_1.id)
    @pet_2 = Pet.create(image: "string",
        name:             "Pepper",
        approximate_age:  4,
        sex:              "F",
        shelter_id:       @shelter_2.id)
  end

  it "displays pet info" do
    visit "/pets"

    expect(page).to have_content(@pet_1.image)
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.approximate_age)
    expect(page).to have_content(@pet_1.sex)
    expect(page).to have_content(@pet_1.shelter_id[:name])
  end
end
