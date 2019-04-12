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

    # def partial(template, *args)
    # options = args.extract_options!
    # options.merge!(:layout => false)
    # if collection = options.delete(:collection) then
    #   collection.inject([]) do |buffer, member|
    #     buffer << haml(template, options.merge(
    #                               :layout => false,
    #                               :locals => {template.to_sym => member}
    #                             )
    #                  )
    #   end.join("\n")
    # else
    #   haml(template, options)
    # end
  # end

  end


end
