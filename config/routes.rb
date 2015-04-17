Elblog::Engine.routes.draw do
  mount Elblog::Engine => 'poto'
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :posts
end
