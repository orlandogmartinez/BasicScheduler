Rails.application.routes.draw do
  devise_for :users, conttrollers: {
      sessions: 'users/sessions'
  }

  devise_scope :user do
    unauthenticated :user do
      root 'users/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root 'users#index', as: :authenticated_root
    end

    authenticate :user do
      resources :event_types
      resources :users do
        resources :events, only: [:index], controller: 'users/events'
      end
      resources :events
    end

  end

end
