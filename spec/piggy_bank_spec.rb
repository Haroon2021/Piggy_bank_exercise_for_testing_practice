require_relative "../lib/piggy_bank.rb"

describe PiggyBank do
  describe "#deposit" do
    it "should accept coins" do
      piggy_bank = PiggyBank.new
#Can the deposit method respond to passing in one input
      expect(piggy_bank).to respond_to(:deposit).with(1).argument
    end
  end
  
  describe "#shake" do
    it "should clink" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit("50p")
      expect(piggy_bank.shake).to eq "clink"
    end
  end
  describe "#not_shake" do
    it "should not clink" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.not_shake).to eq "not clink"
    end
  end

end
