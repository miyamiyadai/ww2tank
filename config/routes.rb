Rails.application.routes.draw do
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :paswords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :customers,  :tanks, :chs
  end
  
  namespace :public do
    resources :customers,  :homes, :tanks, :chs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
