# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root "top#index"
  #get 'acronyms', :to => 'acronyms#index'
  #get  "top/profile"
  resources :acronyms
  resources :terms
end