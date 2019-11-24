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
end
