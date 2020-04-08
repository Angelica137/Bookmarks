require 'bookmark_list'
require 'pg'

describe Bookmark do
  describe '.all' do
    it 'displays the users boomarks in a list' do
      # Connect to test DB
      connection = PG.connect(dbname: 'bookmark_manager_test')
      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end

    it 'creates a new bookmark' do
      Bookmark.create('https://github.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('https://github.com')
    end
  end
end
