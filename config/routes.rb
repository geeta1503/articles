Rails.application.routes.draw do
  get 'welcome/index'

  resources :products
  resources :articles do
  resources :comments
end
  root 'welcome#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
end

#get 'delete/my_article/:my_id', :to => 'articles#geeta', as: :neelam_destroy
#end
