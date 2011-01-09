require 'date'

module Memolicious
  class << self
    
    def next_rep(options = {})
      date = Date.today
      return date unless options[:correct]
      return date.succ if options[:iteration] == 1
      date + Random.new.rand(3..7)
    end
    
  end
end
