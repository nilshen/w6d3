class CreateArtworks2 < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks2s do |t|
        t.string :title, null: false
        t.string :image_url, null: false
        t.integer :artist_id, null: false
        t.timestamps 
    end
      add_index :artworks2s, :artist_id
      add_index :artworks2s, :title
  end
end
