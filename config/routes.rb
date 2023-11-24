Rails.application.routes.draw do
  get 'numbers', to: 'numbers#index'
  get 'numbers/calculate', to: 'numbers#calculate'
  root 'numbers#index'
end