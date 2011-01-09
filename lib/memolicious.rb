require 'date'

module Memolicious
  class << self
    
    def next_rep(options = {})
      date = Date.today
      return date unless options[:correct] == true
      date.succ
    end
    
  end
end
