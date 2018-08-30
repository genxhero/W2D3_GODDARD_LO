require_relative "card.rb"

class Deck

  attr_reader :cards, :size
    def initialize
      @cards = []
      generate_cards
      @size = @cards.size
    end

    def draw
      @cards.pop
    end

    def shuffle_cards
      @cards.shuffle!
    end

    def peek
      @cards.last
    end

    def generate_cards
      (0..3).each do |suit|
         (0..12).each do |val|
           @cards << Card.new(val, suit)
         end
       end
       shuffle_cards
    end


end
