# frozen_string_literal: true

module Api
  module V1
    class DecksController < ApplicationController

      def index
        decks = Deck.all
        render json: decks
      end

      def show
        deck = Deck.find_by(id: params[:id])
        render json: deck
      end

    end
  end
end
