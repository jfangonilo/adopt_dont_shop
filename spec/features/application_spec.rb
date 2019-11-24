require 'rails_helper'

describe "All pages" do
  before :each do
    visit "/"
  end

  it "should have link to pet index" do
    within "#pets-link" do
      click_link "Pets"
    end
  expect(current_path).to eq "/pets"
  end

  it "should have link to shelter index" do
    within "#shelters-link" do
      click_link "Shelters"
    end
  expect(current_path).to eq "/shelters"
  end
end
