require 'rails_helper'

RSpec.describe 'Creating a campsite', type: :feature do
  scenario 'valid inputs' do
    visit new_campsite_path
    fill_in 'Name', with: 'Test Campsite'
    click_on 'Create campsite'
    visit campsites_path
    expect(page).to have_content('Test Campsite')
  end

  scenario 'invalid inputs' do
    visit new_campsite_path
    fill_in 'Name', with: ''
    click_on 'Create campsite'
    expect(page).to have_content("Name can't be blank")
  end
end
