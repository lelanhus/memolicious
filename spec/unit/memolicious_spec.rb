require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
  
  describe "#next_rep" do
    it "should schedule next rep for today if answer is incorrect" do
      stub_next_rep(correct: false).should == Date.today
    end
    
    it "should schedule next rep for a day in the future if answer is correct" do
      stub_next_rep(correct: true).should > Date.today
    end
  end
  
  def stub_next_rep(options = {})
    Memolicious.next_rep(options)
  end
end