Rails.application.routes.draw do
  # get 'org_companies/new'
  # get 'org_companies/edit'
  # get 'org_companies/show'

  devise_for :org_people, :controllers => {
    :registrations => "org_people/registrations",
    :sessions => "org_people/sessions",
    :passwords => "org_people/passwords",
    :confirmations => "org_people/confirmations"
  }

  devise_scope :org_person do
    get 'signup', to: "org_people/registrations#new"
    get 'signin', to: "org_people/sessions#new"
    delete 'signout', to: "org_people/sessions#destroy"
  end

  resources :catalogues
  resources :org_people
  resources :org_companies
  
  root to: "catalogues#index"

  match '/org_register', to:'org_companies#new', via: 'get'
end