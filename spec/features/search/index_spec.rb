require 'rails_helper'

RSpec.describe 'search index spec', type: :feature do
  before :each do
    visit root_path
    find("option[value='fire_nation']").select_option
    click_on "Search For Members"
  end

  describe 'happy path' do
    it 'Should show the amount of characters for that nation' do

      expect(page).to have_content('97 Characters')
    end
  end
  
  describe 'sad path' do
  end

end