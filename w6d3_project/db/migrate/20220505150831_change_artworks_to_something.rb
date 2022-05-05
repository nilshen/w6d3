class ChangeArtworksToSomething < ActiveRecord::Migration[5.2]
  def change
    rename_table :artworks, :art_works
  end
end
