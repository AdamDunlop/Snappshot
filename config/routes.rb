Rails.application.routes.draw do

  get 'welcome/index'

  post 'business_cards/upload', to: 'business_cards#upload'

  post 'business_cards/:id/save_edited_image', to: 'business_cards#save_edited_image'

  root to: 'welcome#index'
  
  get 'create_users/new'

  get '/auth/google_oauth2/callback', to: 'create_users#google'
  
  get "admin" => "admin#index"
  resource :sessions, only: [:new, :create, :destroy]


  # mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  get 'profile', to: 'create_users#show'
  resource :sessions

  
  # devise_for :create_users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  
  resources :business_cards 


  resources :create_users, only: [:new, :create]
  # root to: 'business_cards#index'


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
