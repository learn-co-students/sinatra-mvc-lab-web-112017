require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

   post '/piglatinize' do
     input = PigLatinizer.new
     input.text = params[:user_phrase]
     @answer = input.to_pig_latin(input.text)
     erb :results
   end

end
