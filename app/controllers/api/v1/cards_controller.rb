# frozen_string_literal: true

module Api
  module V1
    class CardsController < ApplicationController

      def index
        require 'pry' ; binding.pry
        # deck = Deck.find_by(id:)
        # render json: decks
      end
    end
  end
end
