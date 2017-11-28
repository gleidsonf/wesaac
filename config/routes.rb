Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/committees" => "home#committees"
  get "/info" => "home#info"
end
