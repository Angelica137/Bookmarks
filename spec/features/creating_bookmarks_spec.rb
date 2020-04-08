feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do 
      visit('/bookmarks/new')
      fill_in('url', with: 'http://www.amazon.com')
      fill_in('title', with: 'Amazon')
      click_button('Submit')

      expect(page).to have_content("Amazon")
  end
end