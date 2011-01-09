require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
  
  describe "#next_rep" do
    it "should schedule next rep for today if answer is incorrect" do
      stub_next_rep(correct: false).should == Date.today
    end
    
    context "correct answer" do
    
      it "should schedule next rep for a day in the future if answer is correct" do
        stub_next_rep(correct: true).should > Date.today
      end
    
      it "should schedule next rep for the next day if this is the first iteration" do
        stub_next_rep(correct: true, iteration: 1).should == Date.today.succ
      end
      
      it "should schedule next rep for three to seven days if this is the second iteration" do
        three_days = Date.today + 3
        one_week = Date.today + 7
        stub_next_rep(correct: true, iteration: 2).should > three_days
        stub_next_rep(correct: true, iteration: 2).should < one_week
      end
    
    end
  end
  
  def stub_next_rep(options = {})
    Memolicious.next_rep(options)
  end
end