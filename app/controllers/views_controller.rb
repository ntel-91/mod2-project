class ViewsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @episode = params[:view][:episode]
    @user_id = session[:user]["id"]
    View.create(user_id: @user_id, episode_id: @episode)
    redirect_to episode_path(@episode)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
