class ChangeArtworks2s < ActiveRecord::Migration[5.2]
  def change
    rename_table :artworks2s, :artworks
  end
end
