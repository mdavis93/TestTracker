Rails.application.routes.draw do

  get 'reports/index'

  resources :courses do
    resources :exams
  end

  devise_for :users

  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
