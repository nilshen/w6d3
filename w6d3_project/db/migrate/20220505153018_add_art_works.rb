class AddArtWorks < ActiveRecord::Migration[5.2]
  def change
    drop_table :art_works
  end
end
