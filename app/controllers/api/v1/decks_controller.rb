# frozen_string_literal: true

module Api
  module V1
    class DecksController < ApplicationController
      def index
        @decks = Deck.all
        
      end
    end
  end
end
