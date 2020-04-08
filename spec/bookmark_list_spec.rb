require 'bookmark_list'
require 'pg'

describe Bookmark do
  describe '.all' do
    it 'displays the users boomarks in a list' do

      Bookmark.create("http://www.makersacademy.com")
      Bookmark.create("http://www.destroyallsoftware.com")
      Bookmark.create("http://www.google.com")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end

    it 'creates a new bookmark' do
      Bookmark.create('https://github.com')    
      expect(Bookmark.all).to include('https://github.com')
    end
  end
end
