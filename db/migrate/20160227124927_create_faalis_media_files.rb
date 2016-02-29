class CreateFaalisMediaFiles < ActiveRecord::Migration
  def change
    create_table :faalis_media_files do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
