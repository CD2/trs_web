Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  root 'pages#home'

  get 'login' =>  'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
  get 'contact_us' => 'enquiries#new'
  get 'contact_us/thanks' => 'enquiries#thanks'
  
  get 'faqs' => 'pages#faq'
  get 'testimonials' => 'pages#testimonials'

  resources :services, only: [:index, :show]
  resources :galleries, only: [:index, :show]

  resources :projects, only: [:index, :show]
  resources :enquiries, only: [:new, :create] do
    collection do
      get :heating_enquiry
      get :tank_enquiry
    end
  end
  resources :sessions, only: [:new, :create]

  namespace :admin do
    root 'projects#index'
    resources :blocks
    resources :services, except: [:show]
    resources :faqs, except: [:show]
    resources :galleries, except: :show do
      resources :gallery_images, only: [:index, :create, :destroy]
    end
    resources :testimonials, except: [:show]
    resources :promotion_cards, except: [:show]
    resources :pages, except: [:show]
    resources :projects, except: [:show]
    resources :enquiries, only: [:index, :show, :destroy]
    resources :users, except: [:show]
  end

  resources :pages, only: [:show], path: '/'


end
