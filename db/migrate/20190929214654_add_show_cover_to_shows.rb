class AddShowCoverToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :show_cover, :text
  end
end
