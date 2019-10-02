class EpisodesController < ApplicationController
    def index  
        @episodes = Episode.all
    end
  
    def show
        @episode = Episode.find(params[:id])
        @user = session[:user]
        @view = View.all.select{ |v| v.user_id == @user["id"] && v.episode_id == @episode.id}.last
    end
  
    def new
    end
  
    def create
        @episode = Episode.find(params[:id])
        @user = session[:user]
        View.create(user_id: @episode.id, episode_id: @user["id"])
        redirect_to episode_path(@episode)
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
    end
end
