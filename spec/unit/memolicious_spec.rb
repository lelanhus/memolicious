require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
    
  context "missed question" do
    it "should set the next repitition as today" do
      Memolicious.next_repetition(correct = false).should == Date.today
    end
    
    it "should do some more stuff so remember to implement"
  end
  
  context "initial easiness factor of 2.5" do
    it "should return a new EF of 1.96 when quality is 1" do
      Memolicious.easiness_factor(2.5, 1).should == 1.96
    end
    
    it "should return a new EF of 2.18 when quality is 2" do
      Memolicious.easiness_factor(2.5, 2).should == 2.18
    end
    
    it "should return a new EF of 1.7 when quality is 0" do
      Memolicious.easiness_factor(2.5, 0).should == 1.7
    end
  end
end