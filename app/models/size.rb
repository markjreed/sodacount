require 'rational'

class Size < ActiveRecord::Base
  ML_PER_OZ = Rational(473176473,16000000)
  def oz
    Rational(ml, ML_PER_OZ)
  end
end
