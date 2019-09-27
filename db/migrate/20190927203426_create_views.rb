class CreateViews < ActiveRecord::Migration[6.0]
  def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :episode_id
      t.string :review

      t.timestamps
    end
  end
end
