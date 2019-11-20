require 'rails_helper'

RSpec.describe "update shelter page", type: :feature do
  it "has link from shelter index page" do
    shelter_1 = Shelter.create(name:    "Shelter 1",
                   address: "6303 W Exposition Ave",
                   city:    "Lakewood",
                   state:   "CO",
                   zip:     "80226")

    visit "/shelters/#{shelter_1.id}"
    click_link "Update"
    assert_equal "/shelters/#{shelter_1.id}/edit", current_path
  end

  # it "can update shelter from edit page and redirects" do
  #
  # end
end
