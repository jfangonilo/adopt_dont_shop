require 'rails_helper'

describe "As a visitor, when I visit shelters/new," do
  it "I can fill out a form to create a shelter and am returned to the shelter index page" do
    visit "shelters/new"
    fill_in 'shelter[name]',    with: 'test shelter'
    fill_in 'shelter[address]', with: 'test shelter address'
    fill_in 'shelter[city]',    with: 'test shelter city'
    fill_in 'shelter[state]',   with: 'test shelter state'
    fill_in 'shelter[zip]',     with: 'test shelter zip'
    click_button 'submit'

    expect(current_path).to eq "/shelters"
    expect(page).to have_content "test shelter"
  end
end
