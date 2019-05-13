Rails.application.routes.draw do
  defaults format: :json do
    resources :services, only: [:index] do
      resources :budget_types, only: [:index, :create]
    end

    resources :budget_items, only: [:index, :create], 
              path: 'budget-items'

    resources :users, only: [:create]

    resource :session, only: [:create, :destroy]
  end
end
