require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
  
  describe "#next_repitition" do
    
    context "missed question" do
      it "should set the next repitition as today no matter the repetition number" do
        n = [1,2,3,2,100,28,29]
        n.each do |n|
          Memolicious.next_rep(n, false).should == Date.today
        end
      end
    
      it "should do some more stuff so remember to implement"
      
    end
  
    context "correct question" do
      it "should set the next repitition to tomorrow if first repetition" do
        tomorrow = Date.today + 1
        Memolicious.next_rep.should == tomorrow
      end
      
      it "should set the next repitition to six days from today if second repetiton" do
        next_repetition = Date.today + 6
        Memolicious.next_rep(2).should == next_repetition
      end
      
      context "not first or second repetition" do
      
        it "should set the next repetition to 16 days from today if previous ef was 2.5" do
          next_repetition = Date.today + 16
          Memolicious.next_rep(3, true, 2.5).should == next_repetition
        end
      end
    end
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