Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'
  # resources :tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id/edit', to:'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to:'tasks#update'
  delete 'tasks/:id', to:'tasks#destroy', as: 'task'
  get 'tasks/:id', to: 'tasks#show'
  post 'tasks', to: 'tasks#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
