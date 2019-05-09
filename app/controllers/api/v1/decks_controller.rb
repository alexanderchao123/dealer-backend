# frozen_string_literal: true

module Api
  module V1
    class DecksController < ApplicationController

      def index
        decks = Deck.all
        render json: decks
      end

      def create
        deck = Deck.new()
        if deck.save
          render json: deck, status: :accepted
        else
          render json: { errors: deck.errors.full_messages }, status: :unprocessible_entity
        end
      end

      def show
        render json: current_deck
      end

      def draw
        cards = current_deck.deal
        render json: cards
      end

      private

      def current_deck
        Deck.find_by(id: params[:id])
      end
    end
  end
end
