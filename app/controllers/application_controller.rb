require "./config/environment"
require './app/models/user.rb'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end
  get '/' do
    erb :home
  end




  helpers do
    def logged_in?
      !!session[:user_id]
      
    end

    def current_user
      @user = User.find(session[:user_id])
    end

  end


end
