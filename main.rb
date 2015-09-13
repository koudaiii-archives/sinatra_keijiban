require 'sinatra'
require 'sqlite3'

db_test = SQLite3::Database.new "db/test.db"
db_test.results_as_hash = true

books = db_test.execute("SELECT title, author, price FROM books;")

p books

db = SQLite3::Database.new "db/post.db"
db.results_as_hash = true

get '/' do
  erb :index
end

post '/' do
  stmt = db.prepare("INSERT INTO posts (text) VALUES (?)")
  stmt.bind_params(params['ex_text'])
  stmt.execute
  redirect '/'
end

get '/example' do
  erb :example
end
