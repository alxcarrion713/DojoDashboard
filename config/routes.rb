Rails.application.routes.draw do
  get '/dojos/:dojo_id/students' => 'students#index'
  get '/dojos/:dojo_id/students/new' => 'students#new'
  post '/dojos/:dojo_id/students/create' => 'students#create'
  get '/dojos/:dojo_id/students/:id' => 'students#show'
  get '/dojos/:dojo_id/students/edit/:id' => 'students#edit'
  patch '/dojos/:dojo_id/students/update/:id' => 'students#update'
  get '/dojos/:dojo_id/students/destroy/:id' => 'students#destroy'
 # dojo routes
  get '/' => 'dojos#index'
  get '/dojos/new' => 'dojos#new'
  get '/dojos/show/:id' => 'dojos#show'  
  get '/dojos/edit/:id' => 'dojos#edit'  
  post '/dojos/create' => 'dojos#create' 
  get '/dojos/destroy/:id' => 'dojos#destroy' 
  get '/dojos/back' => 'dojos#back'
  get '/dojos/home' => 'dojos#home'
  patch '/dojos/update/:id' => 'dojos#update' 
  






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
