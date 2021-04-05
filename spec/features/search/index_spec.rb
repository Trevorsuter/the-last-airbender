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

    it 'should only show detailed information for the first 25 characters' do

      expect(page).to have_css(".character", count: 25)
    end

    it 'each character should have their name displayed' do

      within(".character", match: :first) do
        expect(page).to have_css(".name")
      end
    end
  end
  
  describe 'sad path' do
  end

end