Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
   get 'contact' => 'pages#contact'
   get 'formations' => 'pages#formations'
   get 'informations' => 'contact_form#new'
   resources :contact_form, only: [:new, :create]
end
