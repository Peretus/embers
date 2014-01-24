Remory::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  get "facts/index"
  get "facts/show"
  get "decks/index"
  get "decks/show"
  get "enrollments/show"
  get "enrollments/index"
  get "pages/about"
  get "pages/welcome"
  # get "users/index"
  # get "users/show"
  # get "users/edit"

  resources :users do
    resources :paths, only: [:index, :show] do
      resources :decks, only: [:index, :show, :update] do

      end
    end
  end

  resources :users do
    resources :decks, only: [:edit, :new, :create]
  end

  get "/users/:user_id/decks/:id" => "decks#show_admin", as: "user_deck_admin_show"
  post "/users/:user_id/decks/:id" => "decks#update", as: "user_deck_update"

  get "/users/:user_id/due_facts" => "known_facts#show", as: "user_due_facts"
  post "/users/:user_id/due_facts" => "known_facts#update", as: "user_known_facts_update"

  authenticated :user do
    root :to => "decks#index", :as => "authenticated_root"
  end

  unauthenticated do
    root :to => "pages#welcome", :as => "unauthenticated_root"
  end
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
