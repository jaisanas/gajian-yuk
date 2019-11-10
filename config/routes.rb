Rails.application.routes.draw do
  resources :disbursement_transaction_logs
  resources :disbursement_transactions do
    member do
      post :disburse
    end
  end
  resources :disbursement_requests do
    member do
      post :approve
      post :reject
    end
  end
  get 'employee_deposit/index'

  # resources :employees
  root :to => "employees#index"


  resources :employees do
    get 'deposits', on: :collection
  end

  get 'startup/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
