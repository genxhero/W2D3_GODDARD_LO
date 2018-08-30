require_relative "card.rb"

class Hand
  TYPES = ["NOTHING", "PAIR", "TWO-PAIR", "THREE OF A KIND", "STRAIGHT",
  "FLUSH","FULL HOUSE","FOUR OF A KIND","STRAIGHT FLUSH","ROYAL FLUSH"]

  attr_reader :value, :cards

  def initialize
    @cards = []
  end


end
