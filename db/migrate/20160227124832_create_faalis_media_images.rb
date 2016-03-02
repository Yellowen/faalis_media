class CreateFaalisMediaImages < ActiveRecord::Migration
  def change
    create_table :faalis_media_images do |t|
      t.string :caption
      t.text :subcaption

      t.timestamps null: false
    end
    add_attachment :faalis_media_images, :image
  end
end
