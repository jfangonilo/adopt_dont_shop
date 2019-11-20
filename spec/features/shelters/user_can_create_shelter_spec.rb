require 'rails_helper'

RSpec.describe "add shelter page", type: :feature do
  it "has link for new shelter on index", type: :feature do
    visit "/shelters"

    click_link 'New Shelter'
    assert_equal '/shelters/new', current_path
  end

  it "can add a shelter" do
    visit "shelters/new"
    fill_in 'shelter[name]',    with: 'test shelter'
    fill_in 'shelter[address]', with: 'test shelter address'
    fill_in 'shelter[city]',    with: 'test shelter city'
    fill_in 'shelter[state]',   with: 'test shelter state'
    fill_in 'shelter[zip]',     with: 'test shelter zip'
    click_button 'submit'

    assert_equal '/shelters', current_path
  end

  it "has link from show shelter" do
    shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")

    visit "/shelters/#{shelter_1.id}"
    click_link "Shelter Index"

    assert_equal "/shelters", current_path
  end
end
