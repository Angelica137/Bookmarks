feature 'Displays list of bookamrks' do
  scenario 'A user sees their bookmarks in a list' do
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit('/bookmarks')

    expect(page).to have_content "These are your bookmarks"
    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Destroy All"
    expect(page).to have_content "Google"
  end
end