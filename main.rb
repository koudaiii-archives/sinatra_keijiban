require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new "db/test.db"
db.results_as_hash = true

books = db.execute("SELECT title, author, price FROM books;")

p books

get '/' do
  erb :index
end

get '/example' do
  erb :example
end
