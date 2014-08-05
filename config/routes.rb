Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "about" => "about#about"
  resources :task_lists do
    resources :tasks
  end
  get "task_lists/:id/completed" => "task_lists#completed", as: :completed_task_list_tasks

  # get "task_lists/new" => "task_lists#new"
  # get "task_lists/:id" => "task_lists#show", as: :task_list
  # post "task_lists" => "task_lists#create"
  # get "task_lists/:id/edit" => "task_lists#edit"
  # patch "/task_lists/:id" => "task_lists#update"
end
