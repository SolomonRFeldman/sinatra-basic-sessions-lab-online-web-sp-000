require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "ThisIsNotOneTime"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    session[:item] = [] unless session[:item] != nil
    session[:item] << params[:item]
    @session = session
    
    erb :checkout
  end
  
  
end