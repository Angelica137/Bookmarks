require 'sinatra/base'
require './lib/bookmark_list'
class Bookmarks < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new' 
  end
  
  post '/bookmarks' do
    p params
    Bookmark.create(url: params['url'], title: params['title'])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  patch '/bookmarks/:id' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("UPDATE bookmarks SET url = '#{params[:url]}', title = '#{params[:title]}' WHERE id = '#{params[:id]}'")
    redirect('/bookmarks')
  end

  get '/bookmarks/:id/edit' do
    @bookmark_id = params[:id]
    erb :'bookmarks/edit'
  end

  run! if app_file == $0
end
