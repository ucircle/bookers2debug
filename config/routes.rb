Rails.application.routes.draw do
  get 'book_comments/crate'
  get 'book_comments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>"homes#top"
  devise_for :users


  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
   resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update]

  get "home/about" => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end