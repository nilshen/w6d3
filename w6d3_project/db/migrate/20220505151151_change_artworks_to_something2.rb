class ChangeArtworksToSomething2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :art_works, :artworks, :art_works
  end
end
