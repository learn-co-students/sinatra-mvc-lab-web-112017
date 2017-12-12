require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #creates instance of piglatinizer class using params[:user_input]
    @piglatined = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
