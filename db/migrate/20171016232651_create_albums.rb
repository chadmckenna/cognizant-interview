class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :genre
      t.integer :year

      t.timestamps
    end
  end
end
