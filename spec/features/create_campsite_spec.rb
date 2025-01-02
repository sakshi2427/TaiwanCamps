require 'rails_helper' 
RSpec.describe 'Creating a campsite', type: :feature do 
  context 'when user is logged in' do 
    before do 
      @user = FactoryBot.create(:user) 
      login_as(@user, scope: :user) # Assuming you have a login helper 
    end 
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
  context 'when user is not logged in' do 
    scenario 'redirects to login page' do 
      visit new_campsite_path 
      expect(page).to have_current_path(new_user_session_path) # Assuming Devise routes 
    end 
  end 
end