# frozen_string_literal: true

require 'pg'

def setup_test_database
  puts 'Setting up test database...'
  connection = PG.connect(dbname: 'bookmark_manager_test')

  puts 'Clearing bookmarks table...'
  connection.exec('TRUNCATE bookmarks;')
end
