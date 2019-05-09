# frozen_string_literal: true

module Api
  module V1
    class CardsController < ApplicationController

      def index
        cards = current_deck.cards
        render json: cards
      end

      def draw
        # find the current deck
        # shuffle the deck
        # select five cards from the top
      end

      private

      def current_deck
        Deck.find_by(id: params[:deck_id])
      end
    end
  end
end
