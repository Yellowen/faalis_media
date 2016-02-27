class CreateFaalisFaalisMediaFiles < ActiveRecord::Migration
  def change
    create_table :faalis_faalis_media_files do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
