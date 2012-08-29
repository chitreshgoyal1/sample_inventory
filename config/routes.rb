Inventory::Application.routes.draw do

#  devise_for :users
#  devise_scope :user do
#    get "signup",   :to => "accounts#new"
#    get "signin",   :to => "devise/sessions#new"
#    get "signout",  :to => "devise/sessions#destroy"
#  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"

  post "dynamic_devices/:id" => "patient_assignments#dynamic_devices", :as => "dynamic_devices"
  post "dynamic_patients/:id" => "patient_assignments#dynamic_patients", :as => "dynamic_patients"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "users/:id/password" => "users#password", :as => "reset_pass"
  get "reports/all_locations_summary" => "reports#all_locations_summary", :as => "all_locations_summary"
  get "reports/location_summary/:id" => "reports#location_summary", :as => "location_summary"
  get "reports/problematic_devices" => "reports#problematic_devices", :as => "problematic_devices"
  get "reports/devices_in_use" => "reports#devices_in_use", :as => "devices_in_use"
  get "device_by_location/:id" => "locations#devices_report", :as => "device_by_location"


  resources :device_batteries
  resources :device_carriers  
  resources :audits
  resources :disposable_types
  resources :disposables
  resources :devices
  resources :device_problem_statuses
  resources :device_problems
  resources :device_tests
  resources :device_types
  resources :device_statuses
  resources :groups
  resources :home
  resources :locations
  resources :location_assignments
  resources :location_types
  resources :patients
  resources :patient_assignments
  resources :practices
  resources :sessions
  resources :users do
    member do
      get 'password'
    end
  end


end
