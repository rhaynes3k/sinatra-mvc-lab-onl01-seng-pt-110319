require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @user_word = PigLatinizer.piglatinize(params[:word])
    erb :user_result
  end

end
