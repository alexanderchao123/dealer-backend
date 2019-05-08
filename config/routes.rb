Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :decks do
        resources :cards
      end
    end
  end
end
