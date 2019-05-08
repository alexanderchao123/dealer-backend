class Deck < ApplicationRecord
  belongs_to :user
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
end
