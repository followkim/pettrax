Rails.application.routes.draw do
  get "people/index"
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  root "animals#index"
  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :animals #do 
#      resources :animal_vitals
#  end
  resources :people
#  resources :animal_vitals do 
#    resources :animals
#  end
  resources :vitals
  post "/animal_vitals/animal/:id",         to: "animal_vitals#create", as: "animal_vital"
  get  "/animal_vitals/new/animal/:id",     to: "animal_vitals#new",    as: "new_animal_vital"
  get  "/animal_vitals/:id",                to: "animal_vitals#edit", as: "edit_animal_vital"

get    "/animal_vitals/animal/:id", to: "animal_vitals#index",   as: "animal_vitals"
patch  "/animal_vitals/:id",        to: "animal_vitals#update",  as: "update_animal_vital"
put    "/animal_vitals/:id",        to: "animal_vitals#update"
delete "/animal_vitals/:id",        to: "animal_vitals#destroy", as: "delete_animal_vital"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
end
