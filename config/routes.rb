UnicornRails::Application.routes.draw do
  resources :studentview do
    collection do 
      get "events"
      get "messages"
      get "register"
      get "login"
      get "users"
    end
  end

  resources :lecturers

  resources :coursematerials

  resources :lectureschedules

  resources :courses

  resources :departments do
    collection do
      get :courses
    end
  end

  resources :adverts, :news

  resources :events

  resources :accomodations

  resources :groups

  resources :user_profiles

  resources :messages

  resources :microposts

  devise_for :admins, :path_names => { :sign_up => 'register',:sign_in => 'login'}

  devise_for :users, :path_names => { :sign_up => 'register',:sign_in => 'login'}

  get "static_pages/about"
  match "contact" => "static_pages#contact"
  match "about" => "static_pages#about"
  match "admin" => "adminview#home"
  
  match "student_messages" => "messages#student"

 
  root :to => 'static_pages#home'
end
