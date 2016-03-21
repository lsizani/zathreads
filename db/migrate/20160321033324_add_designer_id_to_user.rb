class AddDesignerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :designer_id, :integer
  end
end
