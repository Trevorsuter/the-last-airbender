require 'rails_helper'

RSpec.describe 'search index spec', type: :feature do
  before :each do
    visit root_path
    find("option[value='fire_nation']").select_option
    click_on "Search For Members"
  end

  describe 'happy path' do
    it 'should see the total number of people that belong to that nation' do


    end
  end
  
  describe 'sad path' do
  end

end