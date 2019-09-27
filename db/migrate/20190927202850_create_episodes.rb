class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :episode_name
      t.integer :show_season
      t.integer :show_id

      t.timestamps
    end
  end
end
