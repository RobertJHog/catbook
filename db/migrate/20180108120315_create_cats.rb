class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.date :birthdate
      t.string :race
      t.boolean :male
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
