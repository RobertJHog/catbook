class AddUserIdToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :user_id, :string
  end
end
