require 'date'

module Memolicious
  class << self
    

    
    def next_rep(n = 1, correct = true, ef = 2.5)
      return Date.today if !correct
      return Date.today + 1 if n == 1
      return Date.today + 6 if n == 2
      Date.today + 16
    end
    
    def easiness_factor(previous_ef, quality)
      calculate_ef(previous_ef, quality).round(2)
    end
    
    private
    
    def calculate_ef(previous_ef, quality)
      previous_ef - 0.8 + 0.28 * quality - 0.02 * quality * quality
    end
    
  end
end
