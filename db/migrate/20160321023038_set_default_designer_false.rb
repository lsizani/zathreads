class SetDefaultDesignerFalse < ActiveRecord::Migration
  def change
    remove_column :users, :approved
    add_column :users, :designer, :boolean, default: false
  end
end
