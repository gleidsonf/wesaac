Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) rescue ActiveAdmin::DatabaseHitDuringLoad

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/committees" => "home#committees"
  get "/info" => "home#info"
  get "/registration" => "subscriptions#new"
  post "/registration" => "subscriptions#create"
  get "/speakers" => "home#speakers"
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
