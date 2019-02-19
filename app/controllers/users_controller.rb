class UsersController < ApplicationController

  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    if !params[:username].empty? && !params[:password].empty? && !params[:email].empty?
      @user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      redirect_to '/signup'
    end

  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'/users/show'
  end
end
