class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards_in_category(category)
    matching_card = []
    @cards.each do |card|
      if card.category == category
        matching_card << card
      end
    end
    matching_card
  end
end
