class AddApprovedToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :approved, :boolean, default: false
  end
end
