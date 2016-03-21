class AddUsertoDesigner < ActiveRecord::Migration
  def change
    add_column :designers , :user_id, :integer
  end
end
