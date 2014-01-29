class Log < ActiveRecord::Base
  belongs_to :brand
  belongs_to :size

  def ml; size.ml end
  def oz; size.oz end

  def caffeine 
    brand.caffeine * size.ml
  end

  class << self
    def today
      from = DateTime.now.midnight
      between(from, from + 1.day)
    end

    def between(from, to)
      where(created_at: from..to)
    end
    
    def sum_between(from, to, &op)
      between(from, to).collect(&op).inject(&:+)
    end

    def ml_between(from, to) sum_between(from, to, &:ml) end
    def oz_between(from, to) sum_between(from, to, &:oz) end
    def caffeine_between(from, to) sum_between(from, to, &:caffeine) end
  end
end

