class AddShortlinksToLinks < ActiveRecord::Migration
  def change
    add_column :links, :original_url, :string
    add_column :links, :shortlink, :string
  end
end
