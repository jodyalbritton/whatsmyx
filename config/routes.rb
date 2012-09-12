Whatsmyx::Application.routes.draw do

  

  


  get "collectors/fitbit"

  get "static_pages/about"

  get "static_pages/privacy"

  get "static_pages/terms"
  get "static_pages/thanks"
    
     scope "/fitbit" do
     get "connect", :controller => "oauth/fitbit", :action => :index, :as => :fitbit_connect
     post "start", :controller => "oauth/fitbit", :action => :start, :as => :fitbit_start
     get "verify", :controller => "oauth/fitbit", :action => :verify, :as => :fitbit_verify
     get "unlink", :controller => "oauth/fitbit", :action => :unlink, :as => :fitbit_unlink
     post "disconnect", :controller => "oauth/fitbit", :action => :disconnect, :as => :fitbit_disconnect
     end

    resources :messages

    resources :physical_activity_types
    resources :mental_activity_types
    resources :notifications
    resources :moderate
    resources :help
    resources :circles
    resources :activities
    resources :contacts
    resource  :fb_collector

    resources :meals do
     
    end
    resources :categories 
    resources :physical_activities do
     get :autocomplete_physical_activity_type_name, :on => :collection
    end
    resources :mental_activities do 
     get :autocomplete_mental_activity_type_name, :on => :collection
    end
    resources :stats do 
     get :autocomplete_category_name, :on => :collection
    end
    resources :goals do
      get :autocomplete_category_name, :on => :collection
    end
    resources :groups do
    resources :memberships 
    end
    resources :gcategories

  

  
   
    resources :community
    
    resources :posts do
    
    end 
    resources :mcategories
    resources :nutrition
    resources :serv_sizes
    resources :nutr_defs
    resources :foods do
     resources :nutrients do
        resources :nutr_defs
      end
    end
  
    resources :ingredients do 
     get :autocomplete_food_name, :on => :collection
    end
    match "/stats/chart/" => "stats#chart", :as => :chart
  
  
 

  
  

  match "users/auth/:service/callback" => 'services#create'

  
  devise_for :users, :skip => [:sessions], :controllers => { :registrations => 'registrations' }
   as :user do
    get 'users/sign_in' => 'devise/sessions#new', :as => :new_user_session
    post 'users/sign_in' => 'devise/sessions#create', :as => :user_session
    get 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
    end
  resources :users, :only => [:index]

  authenticated :user do
  root :to => 'home#index'
  end
  devise_scope :user do
  root :to => "StaticPages#index"
  match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  
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
      resources :reports 
      resource  :profile
      resource  :settings
      resource  :mailbox
 
      get 'invite', :on => :member
      
   end
end
