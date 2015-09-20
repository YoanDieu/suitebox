class SessionsController < ApplicationController
skip_before_filter :authorize, only: [:new, :update, :destroy]

    def new

    end

    def create
      user = User.find_by_name(params[:name])
      if user and user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/order', alert: "connecté!"
        #redirect_to admin_url # use this to redirect the user somewhere after login
      else
        redirect_to login_url, alert: "Invalid user/password combination"
      end
    end

    def destroy
      session[:user_id] = nil
    end
end
