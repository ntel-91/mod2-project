class ShowsController < ApplicationController
  def welcome
    
    @user = session[:user]
    

    @shows = Show.all.sort_by{ |show| show.genre}
    
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
