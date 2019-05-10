Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :decks, only: [:index, :create, :show] do
        member do
          get :draw
        end
      end
    end
  end
end
