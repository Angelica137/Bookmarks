feature 'Displays list of bookamrks' do
  scenario 'A user sees their bookmarks in a list' do
<<<<<<< HEAD

    Bookmark.create("http://www.makersacademy.com")
    Bookmark.create("http://www.destroyallsoftware.com")
    Bookmark.create("http://www.google.com")
=======
    
    Bookmark.create("http://www.makersacademy.com")
    Bookmark.create("http://www.destroyallsoftware.com")
    Bookmark.create("http://www.google.com")

>>>>>>> e805b3a5c3e532cb1a5b080ec02db6a89de43507

    visit('/bookmarks')

    expect(page).to have_content "These are your bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end