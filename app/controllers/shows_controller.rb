class ShowsController < ApplicationController
  def welcome    
    @user = session[:user]
    @user_views = View.all.select{ |view| view.user_id == @user['id']}.reverse
    episodes = @user_views.map { |view| Episode.find_by(id: view.episode_id) }
    @show = episodes.map{ |episode| Show.find_by(id: episode.show_id) }.uniq
    
    @search_shows = Show.all

    
    @comedies = Show.all.select { |show| show.genre == "Comedy" }
    @mysteries = Show.all.select { |show| show.genre == "Mystery" }
    @young_adult = Show.all.select { |show| show.genre == "Young Adult" }
    @action = Show.all.select { |show| show.genre == "Action" }
    
    if params[:ugly] == "1"
      @ugly = true
    else
      @ugly = false
    end
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

  def tv_shows
    @comedies = Show.all.select { |show| show.show_or_movie == true && show.genre == "Comedy"}
    @mysteries = Show.all.select { |show| show.show_or_movie == true && show.genre == "Mystery" }
    @young_adult = Show.all.select { |show| show.show_or_movie == true && show.genre == "Young Adult" }
    @action = Show.all.select { |show| show.show_or_movie == true && show.genre == "Action" }
  end

  def movies
    @comedies = Show.all.select { |show| show.show_or_movie == false && show.genre == "Comedy"}
    @mysteries = Show.all.select { |show| show.show_or_movie == false && show.genre == "Mystery" }
    @young_adult = Show.all.select { |show| show.show_or_movie == false && show.genre == "Young Adult" }
    @action = Show.all.select { |show| show.show_or_movie == false && show.genre == "Action" }
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
