require "hand.rb"
require "rspec"

RSpec.describe Hand do
  subject(:gaga) {Hand.new}
  describe "#initialize" do
    it "initializes empty cards array" do
        expect(gaga.cards).to be_a(Array)
    end
  end

  describe "#get_value" do
    it "assigns "
  end


end
