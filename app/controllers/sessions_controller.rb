class SessionsController < ApplicationController
    
    def new
    end

    def create
        user = User.find_by(username: params[:username])
       if user && user.authenticate(params[:password])
           session[:user] = user
           redirect_to welcome_path
       else
        
        #        flash[:message] = “Michael Jordan is not a musician...maybe”
           redirect_to login_path
       end
    end

    def logout
        session[:user] = nil 
        redirect_to login_path
    end

    
end
