require 'date'

module Memolicious
  class << self
    
    def next_rep

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
