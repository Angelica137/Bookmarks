require_relative '../spec_helper'

feature 'User sees content of index' do
  scenario 'they arrive at the index page' do
      visit('/')
      expect(page).to have_content "Bookmark Manager"
  end
end
