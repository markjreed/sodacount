class PopulateData < ActiveRecord::Migration
  def up
    Size.new(name: 'can', ml: 355).save
    Size.new(name: 'bottle', ml: 592).save
    Size.new(name: 'large', ml: 796).save
    Brand.new(name: 'Diet Coke', caffeine_mg: 45, caffeine_ml: 355,
              sugar: false).save
    Brand.new(name: 'Caffeine-Free Diet Coke', caffeine_mg: 0, sugar: false).save
    Brand.new(name: 'Caffeine-Free Diet Pepsi', caffeine_mg: 0, sugar: false).save
  end
end
