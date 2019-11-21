require 'rails_helper'

describe "As a visitor, when I visit the shelters index page," do
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

    visit "/shelters"
  end

  it "I can see the name of each shelter in the system" do
    expect(page).to have_content("Shelter 1")
    expect(page).to have_content("Shelter 2")
  end

  it "I can navigate to the shelter creation page via a link" do
    click_link "New Shelter"

    expect(current_path).to eq "/shelters/new"
  end

  it "I can navigate to individual shelters via a link" do
    click_link "Shelter 1"

    expect(current_path).to eq "/shelters/#{@shelter_1.id}"
  end

  xit "I can navigate to a specific shelter edit page" do
    # within 'shelter' do
      # click_link "Edit"
      # assert_equal "/shelter/#{@shelter_1.id}/edit", current_path
    # end
  end
end
