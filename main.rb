require 'bundler/setup'
require 'sinatra'


# DataMapper setup - this will use the Rack env variable 'DATABASE_URL' if available
# (it is provided by Heroku). Otherwise, create or use local SQLite development.db
# DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")


# Create models here, e.g.
# class Person
# 	include DataMapper::Resource
# 	property :id, Serial
# 	property :name, String
# end

# Automated schema changes
# DataMapper.auto_upgrade!

# Routes



#get "/css/:sheet.css" do |sheet|
#  sass :"css/#{sheet}"
#end

get "/css/960.css" do 
  sass :"css/960"
end

get "/css/style.css" do 
  sass :"css/style"
end


get "/" do
  haml :index
end



get "/perte-de-signal" do
  haml :perte
end

