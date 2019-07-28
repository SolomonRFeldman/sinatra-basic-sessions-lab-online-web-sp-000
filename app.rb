require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set session_secret, "ThisIsNotOneTime"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    session[:items] << params[:item]
  end
  
  
end