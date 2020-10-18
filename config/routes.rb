Rails.application.routes.draw do
  devise_for :pacientes, controllers: {
      :registrations => 'paciente/registrations'
  }

  devise_for :nutris, controllers: {
      :registrations => 'nutri/registrations'
  }

  resources :pacientes do
    resources :consults
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'welcome/index'
  get 'index', controller: 'nutris', action: 'index'
end
