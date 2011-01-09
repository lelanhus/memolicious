require 'date'

module Memolicious
  class << self
    
    def next_rep(options = {})
      return Date.today unless options[:correct]
      return random_date(min: 1, max: 3) if options[:iteration] == 1
      random_date(min: 3, max: 7)
    end
    
    private
    
    def random_date(options)
      Date.today + Random.new.rand(options[:min]..options[:max])
    end
    
  end
end
