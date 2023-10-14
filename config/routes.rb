Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
   get 'formations' => 'pages#formations'
   get 'contact' => 'contact_form#new'
   resources :contact_form, only: [:new, :create]
end
