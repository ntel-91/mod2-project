class ViewsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @episode = params[:view][:episode].to_i
    @user_id = session[:user]["id"]
    View.create(user_id: @user_id, episode_id: @episode)
    redirect_to episode_path(@episode)
    
  end

  def edit
  end

  def update
    @view = View.find(params[:id])
    @view.update(review: params[:view][:review])
    redirect_to episode_path(@view.episode_id)
  end

  def destroy
  end
end
