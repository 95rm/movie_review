Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
  end
  namespace :public do
    get 'users/my_page'
    get 'users/show'
    get 'users/edit'
    get 'users/likes'
    get 'users/stop'
  end
  namespace :public do
    get 'movies/new'
    get 'movies/index'
    get 'movies/edit'
    get 'movies/research'
  end
  namespace :public do
    get 'homes/top'
  end
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessinons: "admin/sessions"
  }

  devise_for :users, skip: [:passwords], controllers:{
    registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
