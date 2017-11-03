class RenameGroceryToGroceries < ActiveRecord::Migration[5.0]
  def change
    rename_table :grocery, :groceries
  end
end
