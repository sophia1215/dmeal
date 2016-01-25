Rails.application.routes.draw do
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

  get 'org_companies/people/' => 'org_companies#people', :to => "org_companies_people"
  post 'org_people/edit_position/' => 'org_people#edit_position', :to => "org_people_edit_position"
  post 'org_people/remove_from_company/' => 'org_people#remove_from_company', :to => "org_people_remove_from_company"

  resources :catalogues
  resources :org_people
  resources :org_companies
  
  root to: "catalogues#index"

  match '/org_register', to:'org_companies#new', via: 'get'
end