class AddShortlinkToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :shortlink, :string
  end
end
