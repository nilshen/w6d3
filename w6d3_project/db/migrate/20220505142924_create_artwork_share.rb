class CreateArtworkShare < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_shares, :artwork_id
      t.integer :artwork_shares, :viewer_id
      t.timestamps
    end
    add_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id
    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
  end
end
