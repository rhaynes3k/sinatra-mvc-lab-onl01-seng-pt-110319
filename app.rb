require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/pig' do
    @word = Piglatinizer.new(params[:name])
    erb :user_input
  end

end
