Rails.application.routes.draw do

  resources :graphs do 
    resources :questions
    resources :notes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
