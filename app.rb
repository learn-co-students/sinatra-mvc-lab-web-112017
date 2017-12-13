require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    string = params[:user_phrase]

    new_string = PigLatinizer.new
    @to_latinize = new_string.to_pig_latin(string)

    erb :piglatinize
  end

end
