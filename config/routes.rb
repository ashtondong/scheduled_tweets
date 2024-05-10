  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"

  Rails.application.routes.draw do

    get "up" => "rails/health#show", as: :rails_health_check
    # this route set up allows us to change the URL name "about-us" without having to change it in multiple spots since it's all routed to :about. If you dont specify the as: :about, it'll change the prefix name to the URL name and therefore the "pathname_path" will need to be changed in the nav bar html.
    get "about-us", to: "about#index", as: :about 

    root to:"main#index"


end
