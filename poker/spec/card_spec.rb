require "card.rb"

RSpec.describe Card do
  subject(:ace){Card.new(12, 3)}
  describe "#initialize" do

    it "initializes with a face value and a suit index" do
      expect(ace.value).to eq(12)
      expect(ace.suit).to eq("Spades")
    end
    it "assigns a symbol" do
      expect(ace.symbol).to eq("♠︎")
    end
    it "initializes flipped status to false" do
      expect(ace.flipped).to be(false)
    end

  end

  describe "#parse_values" do
    it "assigns name based on face value" do
      expect(ace.name).to eq("Ace of Spades")
    end
  end

  describe "#to_s" do
    it "displays the first character of the card's name and symbol" do
      expect(ace.to_s).to eq("A♠︎")
    end
  end

  describe "#flip" do
    it "toggles flipped status" do
      expect(ace.flip).to eq(true)
    end
  end
end
