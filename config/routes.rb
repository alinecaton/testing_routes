TestingRoutes::Application.routes.draw do
  root 'teams#index'

  resources :teams do
    member do
      get :users
    end

    collection do
      get :projects
    end
  end
end
