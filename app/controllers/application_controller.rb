require './config/environment'
require './app/models/sample_model'
require './app/models/fortune'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/secret' do
    "You found the secret!!"
  end
  
  post '/getfortune' do
    @name = params["name"]
    @age = params["age"]
    @sentence = params["sentence"]
    @breakfast = shout(params["name"])
    puts "Your name is #{@name}"
    @fortune = fortune(@age)
    puts @fortune
    erb :result
  end
end
