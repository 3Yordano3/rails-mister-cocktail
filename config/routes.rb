Rails.application.routes.draw do
  root to: 'cocktails#index'
   #   delete "doses/:id",  to: "doses#destroy", as: :delete
   delete "cocktails/:id",  to: "cocktails#destroy", as: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
   resources :doses, only: [:destroy]
end
