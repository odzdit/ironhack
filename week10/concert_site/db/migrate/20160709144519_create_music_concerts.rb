class CreateMusicConcerts < ActiveRecord::Migration
  def change
    create_table :music_concerts do |t|
      t.string :artist
      t.string :venue
      t.string :city
      t.datetime :date
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
