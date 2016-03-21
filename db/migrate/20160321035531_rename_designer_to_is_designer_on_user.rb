class RenameDesignerToIsDesignerOnUser < ActiveRecord::Migration
  def change
    remove_column :users, :designer
    add_column :users, :is_designer, :boolean, default: false
  end
end
