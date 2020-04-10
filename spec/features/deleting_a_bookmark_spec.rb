feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks')
    expect(page).to have_content('Makers Academy')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content('Makers Academy')
  end
end
