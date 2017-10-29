class CreateGroceries < ActiveRecord::Migration[5.0]
  def change
    create_table :grocery do |t|
      t.string :name
      t.integer :quantity
    end
  end
end
