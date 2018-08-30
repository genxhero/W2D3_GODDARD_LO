class Card
  SUIT_SYMBOLS = ["♣","⬥","❤︎","♠︎"]
  SUITS = ["Clubs", "Diamonds", "Hearts", "Spades"]
  attr_reader :value, :suit, :name, :flipped, :symbol

  def initialize(value, suit)
    @value = value
    @suit = SUITS[suit]
    @symbol = SUIT_SYMBOLS[suit]
    parse_values
    @flipped = false
  end

  def flip
    if @flipped == true
      @flipped = false
    else
      @flipped = true
    end
  end

  def parse_values
    if @value.between?(0,8)
      @name = "#{@value + 2} of #{@suit}"
    end
    if @value == 9
      @name = "Jack of #{@suit}"
    end
    if @value == 10
      @name = "Queen of #{@suit}"
    end
    if @value == 11
      @name = "King of #{@suit}"
    end
    if @value == 12
      @name = "Ace of #{@suit}"
    end
  end

  def to_s
    "#{@name[0]}#{@symbol}"
  end

  def self.mew
    @value = "Nya"
    @name = "Kitty"
    @to_s = "NYAN NYAN NYAN"
  end

end
