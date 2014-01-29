class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :size
      t.references :brand
      t.integer :quantity
      t.timestamps
    end
  end
end
