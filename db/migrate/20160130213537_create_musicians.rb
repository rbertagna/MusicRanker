class CreateMusicians < ActiveRecord::Migration
  def up
    create_table :musicians do |t|
      t.string :name
      t.string :genre
      t.string :img_url
      t.string :music_url
      t.integer :rating
    end
  end

  def down
    drop_table :musicians
  end
end
