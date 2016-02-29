class CreateFaalisMediaVideos < ActiveRecord::Migration
  def change
    create_table :faalis_media_videos do |t|
      t.string :caption
      t.text :subcaption

      t.timestamps null: false
    end
  end
end
