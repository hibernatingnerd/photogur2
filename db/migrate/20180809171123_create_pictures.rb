class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :artist
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
