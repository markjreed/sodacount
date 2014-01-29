class ChangeCaffeineFlagToQuantity < ActiveRecord::Migration
  def up
    add_column :brands, :caffeine_mg, :int
    add_column :brands, :caffeine_ml, :int
    remove_column :brands, :caffeine
  end
end
