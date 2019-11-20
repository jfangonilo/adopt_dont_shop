require 'rails_helper'

describe "update shelter page", type: :feature do
  before :each do
    @shelter_1 = Shelter.create(name: "Shelter 1",
      address: "6303 W Exposition Ave",
      city:    "Lakewood",
      state:   "CO",
      zip:     "80226")
  end

  it "can update shelter redirect" do
    visit "/shelters/#{@shelter_1.id}/edit"
    fill_in 'shelter[name]', with: 'test shelter'
    fill_in 'shelter[address]', with: 'test shelter address'
    fill_in 'shelter[city]', with: 'test shelter city'
    fill_in 'shelter[state]', with: 'test shelter state'
    fill_in 'shelter[zip]', with: 'test shelter zip'
    click_button "submit"

    assert_equal "/shelters/#{@shelter_1.id}", current_path
  end
end
