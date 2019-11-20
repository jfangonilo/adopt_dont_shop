require 'rails_helper'

describe "shelter show", type: :feature do
  before :each do
    @shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")
  end

  it "can see a single shelter" do
    visit "shelters/#{@shelter_1.id}"

    expect(page).to have_content(@shelter_1.name)
    expect(page).to have_content(@shelter_1.address)
    expect(page).to have_content(@shelter_1.city)
    expect(page).to have_content(@shelter_1.state)
    expect(page).to have_content(@shelter_1.zip)
  end

  it "can navigate to update page" do
    visit "/shelters/#{@shelter_1.id}"
    click_link "Update"

    assert_equal "/shelters/#{@shelter_1.id}/edit", current_path
  end

  it "can navigate back to index" do
    visit "shelters/#{@shelter_1.id}"
    click_link "Shelter Index"

    assert_equal "/shelters", current_path
  end
end
