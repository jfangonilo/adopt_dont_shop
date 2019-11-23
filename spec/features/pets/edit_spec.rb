require 'rails_helper'

describe "As a visitor, when I go to /pet/:id/edit," do
  before :each do
    shelter_1 = Shelter.create(
      name:     "Winterfell",
      address:  "6303 W Exposition Ave",
      city:     "Lakewood",
      state:    "CO",
      zip:      "80226"
    )

    @pet = shelter_1.pets.create(
      image:            "https://www.allthingsdogs.com/wp-content/uploads/2018/12/Husky-Names-Feature.jpg",
      name:             "Seamus",
      approximate_age:  8,
      sex:              "male",
      description:      "Winter is Coming; dog"
    )

    visit "/pets/#{@pet.id}/edit"
  end

  it "I can fill out a form to update the pet and get redirected to that pet's page" do
    fill_in 'image',            with: 'https://heavyeditorial.files.wordpress.com/2019/04/ghost.jpg'
    fill_in 'name',             with: 'Ghost'
    fill_in 'description',      with: 'Winter is Here; Direwolf'
    fill_in 'approximate_age',  with: 5
    fill_in 'sex',              with: 'male'

    click_button "Update"

    expect(current_path).to eq "/pet/#{@pet.id}"
    expect(page).to have_css "img[url *= ghost.jpg]"
    expect(page).to have_content "Ghost"
    expect(page).to have_content "Winter is Here; Direwolf"
    expect(page).to have_content 5
    expect(page).to have_content "male"

    expect(page).to_not have_css "img[url *= Husky-Names-Feature.jpg]"
    expect(page).to_not have_content "Seamuis"
    expect(page).to_not have_content "Winter is Coming; dog"
    expect(page).to_not have_content 5
  end

end
