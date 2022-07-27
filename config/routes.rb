Rails.application.routes.draw do
  resources :insuarances do
  get 'insuarances',to: 'insuarances#calculate_premium', as: :calculate_premium
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "insuarances#index"
end
