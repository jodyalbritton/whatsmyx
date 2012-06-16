Whatsmyx::Application.routes.draw do


  
  
  resources :dailylogs

  opinio_model
  
  resources :community
 
  resources :checklists
  resources :posts do
  opinio
end 
 
  resources :notes
  resources :meals do
  get :autocomplete_food_name, :on => :collection
  end

  resources :mcategories
  resources :categories
  resources :ingredients
  resources :stats
  resources :activities
  resources :goals

  resources :meals 
  resources :nutrition
  resources :nutr_defs
  resources :foods do
   resources :nutrients do
     resources :nutr_defs
   end
  end

  match "users/auth/:service/callback" => 'services#create'

  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  resources :users, :only => [:index]

  authenticated :user do
  root :to => 'home#index'
  end
  devise_scope :user do
  root :to => "devise/registrations#new"
  
  end
 
resources :services, :only => [:index, :create, :destroy]
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  


  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end
 delete  'likes/:resource_name/:resource_id' => "likes#destroy", :as => 'like'
 post    'likes/:resource_name/:resource_id' => "likes#create",  :as => 'like'
  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  resources :users, :only => [:show], :path => '/' do 
   resources :follows, :only => [:create, :destroy]
   end
end
