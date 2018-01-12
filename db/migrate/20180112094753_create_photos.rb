class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.date :created_at

      t.timestamps
    end
  end
end
