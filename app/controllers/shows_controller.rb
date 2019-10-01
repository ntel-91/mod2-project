class ShowsController < ApplicationController
  def welcome
    
    @user = session[:user]
    @user_views = View.all.select{ |view| view.user_id == @user['id']}.reverse
    episodes = @user_views.map { |view| Episode.find_by(id: view.episode_id) }
    @show = episodes.map{ |episode| Show.find_by(id: episode.show_id) }.uniq

    

    # @user_views.each do |view|
    #   episode = Episode.find_by(id: view.episode_id)
    #   <h1><%= link_to episode.episode_name, episode.video_link %></h1>
    # end
    
    @comedies = Show.all.select { |show| show.genre == "Comedy" }.take(4)
    @mysteries = Show.all.select { |show| show.genre == "Mystery" }.take(4)
    @young_adult = Show.all.select { |show| show.genre == "Young Adult" }.take(4)
    @action = Show.all.select { |show| show.genre == "Action" }.take(4)
    
  end

  def genres_page
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
    @episodes = Episode.all.select{ |episodes| episodes.show_id == @show.id}

    @user = session[:user]
    @user_views = View.all.select{ |view| view.user_id == @user['id']}.reverse
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
