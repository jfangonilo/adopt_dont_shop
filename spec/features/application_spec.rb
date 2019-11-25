require 'rails_helper'

describe "All pages" do
  before :each do
    visit "/"
  end

  it "should have link to pet index" do
    click_link "All Pets"
    expect(current_path).to eq "/pets"
  end

  it "should have link to shelter index" do
    click_link "All Shelters"
    expect(current_path).to eq "/shelters"
  end
end
