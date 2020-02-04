require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/ticket')
require_relative('./models/film')
require_relative('./models/customer')
also_reload('./models/*')


get "/films" do
  @all_film = Film.all
  erb(:index)
end

get "/films/:film_id" do
  film_data = Film.find_by_id(params[:film_id])
  @film = film_data
  erb(:film)
end
