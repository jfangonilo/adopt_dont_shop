require 'rails_helper'

RSpec.describe "update shelter page", type: :feature do
  it "has link from shelter index page" do
    shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")

    visit "/shelters/#{shelter_1.id}"
    click_link "Update"
    assert_equal "/shelters/#{shelter_1.id}/edit", current_path
  end

  it "can update shelter from edit page and redirects" do
    shelter_1 = Shelter.create(name:    "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")

    visit "/shelters/#{shelter_1.id}/edit"
    fill_in 'shelter[name]', with: 'test shelter'
    fill_in 'shelter[address]', with: 'test shelter address'
    fill_in 'shelter[city]', with: 'test shelter city'
    fill_in 'shelter[state]', with: 'test shelter state'
    fill_in 'shelter[zip]', with: 'test shelter zip'
    click_button "submit"
    assert_equal "/shelters/#{shelter_1.id}", current_path
  end

  it "has an update link from index" do
    shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")

    visit '/shelters'
    click_link "Edit"
    assert_equal "/shelters/#{shelter_1.id}/edit", current_path
  end
end
