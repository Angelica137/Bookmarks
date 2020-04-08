require 'pg'

class Bookmark
  def self.all
    connection = connect_to_database
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url)
    connection = connect_to_database
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
  end

  def self.connect_to_database
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

end
