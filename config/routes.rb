Rails.application.routes.draw do
  root "task_lists#index"

  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  get "about" => "about#about"

  resources :task_lists do
    resources :tasks, except: :update
  end

  patch "/task_lists/:task_list_id/tasks/:id/complete" => "completed_tasks#create", as: :complete_task_list_task

  get "task_lists/:id/completed" => "completed_tasks#index", as: :completed_task_list_tasks
end
