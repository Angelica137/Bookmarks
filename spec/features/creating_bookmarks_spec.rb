feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do 
      visit('/bookmarks/new')
      fill_in('url', with: 'http://www.amazon.com')
      fill_in('title', with: 'Amazon')
      click_button('Sumbit')

      expect(page).to have_link('Amazon', href: 'http://www.amazon.com')
  end
end