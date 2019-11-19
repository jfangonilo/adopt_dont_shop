require 'rails_helper'

RSpec.describe "add shelter page", type: :feature do
  it "can add a shelter" do
    visit "shelters/new"

  expect(page).to have_field "shelter[name]"
  expect(page).to have_field "shelter[address]"
  expect(page).to have_field "shelter[city]"
  expect(page).to have_field "shelter[state]"
  expect(page).to have_field "shelter[zip]"
  expect(page).to have_button "submit"
  end
end
