require 'rails_helper'

describe "shelters index page", type: :feature do
  before :each do
    @shelter_1 = Shelter.create(name: "Shelter 1")
    @shelter_2 = Shelter.create(name: "Shelter 2")

    visit "/shelters"
  end

  it "can see all shelters" do
    expect(page).to have_content(@shelter_1.name)
    expect(page).to have_content(@shelter_2.name)
  end

  it "can navigate to individual shelters" do
    click_link "#{@shelter_1.name}"
    assert_equal "/shelters/#{@shelter_1.id}", current_path
  end

  it "can navigate to new shelter page" do
    click_link "New Shelter"
    assert_equal "/shelters/new", current_path
  end

  xit "can navigate to a specific shelter edit page" do
    # within 'shelter' do
      click_link "Edit"
      assert_equal "/shelter/#{@shelter_1.id}/edit", current_path
    # end
  end
end
