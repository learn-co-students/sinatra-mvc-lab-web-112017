require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @pl = PigLatinizer.new
    @result = @pl.to_pig_latin(@text)
    erb :result
    # if text.split(' ').count > 1
    #   @pl.to_pig_latin(text)
    # else
    #   @pl.piglatinize(text)
    # end

  end
end
