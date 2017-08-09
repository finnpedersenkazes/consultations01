Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctor_patient_relations

  resources :doctors
  # get "/doctors" => doctors#index
  # get "/doctors/:id" => doctors#show
  # get "/doctors/new" => doctors#new
  # post "/doctors" => doctors#create
  # get "/doctors/:id/edit" => doctors#edit
  # patch "/doctors/:id" => doctors#update
  # delete "/doctors/:id" => doctors#destroy

  resources :patients
  # get "/patients" => patients#index
  # get "/patients/:id" => patients#show
  # get "/patients/new" => patients#new
  # post "/patients" => patients#create
  # get "/patients/:id/edit" => patients#edit
  # patch "/patients/:id" => patients#update
  # delete "/patients/:id" => patients#destroy
end
