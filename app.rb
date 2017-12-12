require_relative 'config/environment'

class App < Sinatra::Base


  get "/" do
    erb :user_input
  end


  post "/piglatinize" do
    text = params[:user_phrase]
    @pig = PigLatinizer.new
    @new_word = @pig.to_pig_latin(text)
    erb :result
  end

end
