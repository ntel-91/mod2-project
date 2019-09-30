class AddVideoLinkToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :video_link, :text
  end
end
