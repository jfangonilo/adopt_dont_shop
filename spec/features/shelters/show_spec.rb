require 'rails_helper'

describe "As a visitor, when I visit /shelters/:id," do
  before :each do
    @shelter_1 = Shelter.create!(
      name:     "Shelter 1",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )

      visit "shelters/#{@shelter_1.id}"
  end

  it "I can see the shelter with that id including the shelter's name, address, city, state, zip" do
    expect(page).to have_content "Shelter 1"
    expect(page).to have_content "6303 W Exposition Ave"
    expect(page).to have_content "Lakewood"
    expect(page).to have_content "CO"
    expect(page).to have_content "80226"
  end

  it "I can navigate to the edit shelter page via an Update link" do
    click_link "Update"

    expect(current_path).to eq "/shelters/#{@shelter_1.id}/edit"
  end

  it "I can navigate back to index via a Shelter Index link" do
    click_link "Shelter Index"

    expect(current_path).to eq "/shelters"
  end

  it "I can delete the shelter and redirect to index via a Delete button" do
    click_button "Delete"

    expect(current_path).to eq "/shelters"
  end
end
