class CreateJoinTableCatPhoto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cats, :photos do |t|
      # t.index [:cat_id, :photo_id]
      # t.index [:photo_id, :cat_id]
    end
  end
end
