class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string  :name
      t.int :calories
      t.int :calories_ml
      t.int :caffeine_mg
      t.int :caffeine_ml
      t.timestamps
    end
  end
end
