class EpisodesController < ApplicationController
    def index  
        @episodes = Episode.all
    end
  
    def show
        @episode = Episode.find(params[:id])
        @user = session[:user]
        @episode_id = @episode.video_link.partition('v=').last
        @view = View.all.select{ |v| v.user_id == @user["id"] && v.episode_id == @episode.id}.last
        @reviews = View.all.select{ |v| v.episode_id == @episode.id && v.review != nil}
    end
  
    def create
        @episode = Episode.find(params[:id])
        @user = session[:user]
        View.create(user_id: @episode.id, episode_id: @user["id"])
        redirect_to episode_path(@episode)
    end

end
