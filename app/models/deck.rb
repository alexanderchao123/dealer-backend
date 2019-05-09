class Deck < ApplicationRecord
  has_many :cards

  after_create :generate_cards

  def generate_cards
    suits = ['Club', 'Diamond', 'Heart', 'Spade']
    ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

    suits.each do |suit|
      ranks.each do |rank|
        Card.create(deck: self, rank: rank, suit: suit)
      end
    end
  end

  def undrawn_cards
    return cards.where(drawn: false)
  end

  def shuffled_cards
    return undrawn_cards.shuffle
  end

  def draw
    card = shuffled_cards.first
    card.update(drawn: true)
    return card
  end

  def deal
    drawn_cards = []
    if !undrawn_cards.empty? && undrawn_cards.count >= 5
      5.times { drawn_cards.push(draw) }
    elsif !undrawn_cards.empty? && undrawn_cards.count == 2
      2.times { drawn_cards.push(draw) }
    end
    return drawn_cards
  end
end
