require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Memolicious do
  
  describe "#next_rep" do
    context "next rep is today"
      it "should schedule next rep for today if answer is incorrect" do
        Memolicious.next_rep(correct: false).should == Date.today
      end
      
      
    end
  end
end