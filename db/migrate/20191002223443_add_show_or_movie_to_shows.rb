class AddShowOrMovieToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :show_or_movie, :boolean
  end
end
