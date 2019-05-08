class DeckSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  has_many :cards
end
