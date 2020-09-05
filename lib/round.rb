class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards[0]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << Turn.new(guess, current_card)
    @deck.cards.shift
    new_turn
  end
  # def add_turn(turn)
  #   @turns << turn
  # end
  def number_correct
    @turns.find_all do |turn|
      turn.correct?
    end.count
  end

  def number_correct_by_category(category)
    @turns.find_all do |turn|
      turn.card.category == category && turn.correct?
    end.count
  end
end
