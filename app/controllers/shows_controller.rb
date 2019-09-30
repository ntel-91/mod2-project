class ShowsController < ApplicationController
  def welcome
    @shows = Show.all
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
