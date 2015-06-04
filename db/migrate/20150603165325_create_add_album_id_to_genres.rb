class CreateAddAlbumIdToGenres < ActiveRecord::Migration
  def change
    create_table :add_album_id_to_genres do |t|
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
