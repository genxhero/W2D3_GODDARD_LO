require "deck.rb"
require "card.rb"

RSpec.describe Deck do
  subject(:pegasus) { Deck.new }
  describe "#initialize" do
    it "Initializes with an empty cards array" do
      expect(pegasus.cards).to be_a(Array)
    end
  end

  describe "#generate_cards" do
    it "Populates the cards array with 52 unique Card objects" do
      expect(pegasus.cards.count).to eq(52)
      expect(pegasus.cards).to all(be_an(Card))
    end

  end

  describe "#draw" do
    it "Removes the top card from the deck" do
      pegasus.draw
      expect(pegasus.cards.length).to eq(51)
    end

  end

  describe "#shuffle_cards" do
    it "Shuffles cards array dangerously" do
      pegasus.shuffle_cards
      expect(pegasus.cards.first.name).to_not eq("2 of Hearts")
    end
  end

  describe "#peek" do #eventually private
    it "Reveals the top card of the deck" do
    expect(pegasus.peek).to eq(pegasus.cards.last)
    end
  end

end
