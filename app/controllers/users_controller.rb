class UsersController < ApplicationController
  def index
  end

  def login
    
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:first_name, :last_name, :username, :password))
    session[:user] = @user
    redirect_to welcome_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
