class ChangeColumnInComments < ActiveRecord::Migration
  def change
  	rename_column :comments, :concert_id, :music_concert_id
  end
end
