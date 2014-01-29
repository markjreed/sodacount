class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string  :name
      t.integer :ml
      t.timestamps
    end
  end
end
