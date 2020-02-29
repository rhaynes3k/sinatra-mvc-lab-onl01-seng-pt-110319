require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @pig_latinizer = PigLatinizer.new(params[:word])
    binding.pry
    #puts params
    erb :user_result
  end

end
