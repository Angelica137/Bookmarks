As a user who has a list of bookmarks  
so that I can see the list of bookmarks  
I want to be able to show list

How to set up the data base:

- Connect to `psql`
- Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
- Connect to the database using the `pqsl` command `\c bookmark_manager;`
- Run the query we have saved in the file `01_create_bookmarks_table.sql`

Set up the test database:

- Connect to `psql`
- Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
- Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
- Run the query we have saved in the file `01_create_bookmarks_table.sql`


As a user who wants to save content
so that I can access it later
I want to be able to create a bookmark for it
