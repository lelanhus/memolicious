require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
  
  describe "#next_rep" do
    it "should schedule next rep for today if answer is incorrect" do
      Memolicious.next_rep(correct: false).should == Date.today
    end
    
    it "should schedule next rep for a day in the future if answer is correct" do
      Memolicious.next_rep(correct: true).should > Date.today
    end
  end
end