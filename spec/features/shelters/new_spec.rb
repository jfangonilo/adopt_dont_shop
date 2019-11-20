require 'rails_helper'

describe "add shelter page", type: :feature do
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
end
