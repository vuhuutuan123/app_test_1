Rails.application.routes.draw do
  namespace :dashboard do
    root "dashboard#home"
    devise_for :admins, controllers: {sessions: "dashboard/sessions"}
    resources :categories
    resources :members
    resources :tests do
      member do
        get :publish, :draff
      end
    end
  end

  namespace :user do
    root "static_pages#home"
    devise_for :members, controllers: {registrations: "user/registrations",
      sessions: "user/sessions"}, path: ""
    get :profile, to: "members#show"
  end
end
