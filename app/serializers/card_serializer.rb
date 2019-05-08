class CardSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :deck
end
