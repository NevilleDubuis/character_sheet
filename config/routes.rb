CharacterSheet::Application.routes.draw do

  get "card_details/show/"

  put "card_details/update"

  resources :warhammer40ks

  resources :cards

  devise_for :users

  root :to => 'cards#index'

end
