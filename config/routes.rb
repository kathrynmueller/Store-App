Rails.application.routes.draw do
  root 'storefront#all_items'


  devise_for :users
  resources :products

  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'


  get 'by_category' => 'storefront#items_by_category', as: 'categorical'
  get 'by_brand' => 'storefront#items_by_brand', as: 'branding'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
