require 'rails_helper'

RSpec.describe 'welcome index spec', type: :feature do
  before :each do
    visit root_path
  end

  describe 'happy path' do
    it 'search for members directs you to the search index' do
      find("option[value='fire_nation']").select_option
      click_on "Search For Members"

      expect(current_path).to eq(search_path)
    end
  end
end