class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :album_id
      t.integer :user_id
      t.string :image
      t.boolean :profile_pic
      t.timestamps
    end
  end
end
