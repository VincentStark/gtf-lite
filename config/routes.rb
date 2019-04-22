Gtf::Application.routes.draw do

  root :to     => "pages#home"
  get "/about" => "pages#about"

  resources :keywords
  resource :feedback
end
