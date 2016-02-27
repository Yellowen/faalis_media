class CreateFaalisFaalisMediaImages < ActiveRecord::Migration
  def change
    create_table :faalis_faalis_media_images do |t|
      t.string :caption
      t.text :subcaption

      t.timestamps null: false
    end
  end
end
