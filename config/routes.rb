Elblog::Engine.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :posts
end
