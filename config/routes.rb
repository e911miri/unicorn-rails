UnicornRails::Application.routes.draw do
  resources :students

  resources :subscriptions

  resources :notifications

  match "studentview" => "studentview#index"
  match "studentview/events" => "studentview#events"
  match "studentview/courses" => "studentview#courses"
  match "studentview/news" => "studentview#news"
  match "studentview/messages" => "studentview#messages"
  match "studentview/register" => "studentview#register"
  match "studentview/users" => "studentview#users"
  match "studentview/groups" => "studentview#groups"
  match "studentview/home" => "studentview#home"
  
  match "admin" => "adminview#home"
  match "admin/users" => "adminview#users"
  match "admin/list" => "adminview#administrators"
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
  

  devise_for :users, :path_names => { :sign_up => 'register',:sign_in => 'login'}# :controllers => { :registrations => "users" }

  get "static_pages/about"
  match "contact" => "static_pages#contact"
  match "about" => "static_pages#about"
  
  
  match "student_messages" => "messages#student"

 
  root :to => 'studentview#home'
end
