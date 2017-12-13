require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    #binding.pry
    @phrase = params[:user_phrase]
    new_translator = PigLatinizer.new
    @translated = new_translator.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
