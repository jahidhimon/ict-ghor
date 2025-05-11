Rails.application.routes.draw do
  resources :chapters, only: [ :index, :show ] do
    resources :topics
  end

  get "/about" => "pages#about", as: :about
  get "/contact" => "pages#contact", as: :contact
  get "up" => "rails/health#show", as: :rails_health_check

  post "change_locale" => "application#change_locale", as: :change_locale

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root "pages#home"
end
