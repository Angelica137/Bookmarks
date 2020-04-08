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
      bookmark = Bookmark.create('http://github.com', "Github")    
      expect(bookmark[:url]).to eq 'http://github.com'
      expect(bookmark[:title]).to eq "Github"
    end
  end
end
