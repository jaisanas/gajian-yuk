Rails.application.routes.draw do
  # resources :employees
  root :to => "employees#index"


  resources :employees do
    get 'deposits', on: :collection
  end

  get 'startup/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
