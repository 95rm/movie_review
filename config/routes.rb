Rails.application.routes.draw do
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
  end

  scope module: :public do
    root to: 'homes#top'
    resources :movies, only: [:new, :icreate, :index, :edit, :updeta, :destroy]do
      collection do
        get :research
      end
      resource :likes, only: [:create, :destroy]do
      end
    end
    resources :user, only: [:my_page, :show, :edit, :update, :stop, :withdraw, :likes]do
    end
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :users, skip: [:passwords], controllers:{
    registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
