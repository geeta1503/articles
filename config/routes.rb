Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  
  devise_for :users
  devise_for :models do
     get '/models/sign_out' => 'devise/sessions#destroy'
end
  get 'welcome/index'
  #resources :categories
  resources :products do 
   
end
  resources :articles do
  resources :comments
end
  root 'welcome#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm


get 'delete/my_article/:my_id', :to => 'articles#geeta', as: :neelam_destroy
#end
get 'delete/my_product:my_id', :to => 'products#geeta',as: :geeta_destroy

end