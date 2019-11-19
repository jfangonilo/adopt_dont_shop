require 'rails_helper'

RSpec.describe "shelter show page", type: :feature do
  it "can see a single shelter" do
    shelter_1 = Shelter.create(name:    "Shelter 1",
                               address: "6303 W Exposition Ave",
                               city:    "Lakewood",
                               state:   "CO",
                               zip:     "80226")

    visit "shelters/#{shelter_1.id}"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_1.address)
    expect(page).to have_content(shelter_1.city)
    expect(page).to have_content(shelter_1.state)
    expect(page).to have_content(shelter_1.zip)
  end
end
