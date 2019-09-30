class ShowsController < ApplicationController
  def welcome
    @shows = Show.all.sort_by{ |show| show.genre}
    @comedies = Show.all.select { |show| show.genre == "Comedy" }
    @mysteries = Show.all.select { |show| show.genre == "Mystery" }
    @young_adult = Show.all.select { |show| show.genre == "Young Adult" }
    
  end

  def genres_page
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
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
