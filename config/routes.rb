Rails.application.routes.draw do
  get 'repages/index'

  get 'repages/new'

  get 'repages/create'

  get 'repages/destroy'

  # get 'navbar/home'

  # get 'navbar/forum'

  # get 'navbar/inbox'

  # get 'navbar/profile'

  # get 'navbar/settings'

  devise_for :users, :controllers => { :registrations => "my_registrations" }
  # get 'layouts/welcome/index'
  get '/' => 'welcome#index'
  resources :admin
  # get 'adminhome' => 'admin#home'
  
  resources :posts do
    resources :comments
  end
  
  resources :community
  root 'welcome#index'
  
  get 'posts/tag/:tag', to: 'posts#index', as: "tag"
  
  get 'posts/title/:title', to: 'posts#index', as: "title"
  
  # get 'profile/:id', to: 'profile#show', as: 'profile'
  # get 'profile/:id', to: 'profile#create', as: :create_goal
  # get ':id/goal', to: 'profile#goal', as: :goal_profile 
  resources :profile do
    #get 'profile/:goal', to: 'profile#goal', as: :goal_profile
  end
  get 'resources', to: 'resource#index', as: 'resources'
  
  ###
  resources :repages, only: [:index, :new, :create, :destroy]
  ###
  
  
  # mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
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