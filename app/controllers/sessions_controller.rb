class SessionsController < ApplicationController
  get '/login' do
    erb :'/sessions/new'
  end

  post '/login' do
    # binding.pry
    @user = User.find_by(username: params[:username])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect "/login"
    end
  end

  get '/logout' do
    session.destroy
    redirect '/'
  end

end
