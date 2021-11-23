Rails.application.routes.draw do
  resources :crew_members, only: [:index, :show]
end
