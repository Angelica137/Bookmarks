feature 'Displays list of bookamrks' do
  scenario 'A user sees their bookmarks in a list' do
    Bookmark.create("http://www.makersacademy.com")
    Bookmark.create("http://www.destroyallsoftware.com")
    Bookmark.create("http://www.google.com")

    visit('/bookmarks')

    expect(page).to have_content "These are your bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end