require 'date'

module Memolicious
  class << self
    
    def next_repetition(correct)
      Date.today
    end
    
    def easiness_factor(previous_ef, quality)
      new_ef = previous_ef - 0.8 + 0.28 * quality - 0.02 * quality * quality
      new_ef.round(2)
    end
    
    
  end
end
