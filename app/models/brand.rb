class Brand < ActiveRecord::Base
    num = (brand.caffeine_mg rescue nil) || 0
    den = (brand.caffeine_ml rescue nil) || 1
    Rational(num, den) 
end
