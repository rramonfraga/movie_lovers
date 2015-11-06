require 'sinatra'
require 'sinatra/reloader'
require 'imdb'
require 'pry'
require_relative 'lib/IMDBsearcher.rb'


get "/" do
  redirect("/homepage")
end

get "/homepage" do
  erb(:homepage)
end

post "/search" do
  #binding.pry
  @nine_fimls = IMDBsearcher.new.load_the_nine_movies_from(params[:movie])
  erb(:show_movies)
end

get "/show_movies" do
  erb(:show_movies)
end