Rails.application.routes.draw do
  get 'dinosaurs', to: 'dinosaurs#index'
  get 'dinosaurs/new', to: 'dinosaurs#new'
  get 'dinosaurs/:id', to: 'dinosaurs#show', as: :dinosaur
  post 'dinosaurs', to: 'dinosaurs#create'
  get 'dinosaurs/:id/edit', to: 'dinosaurs#edit'
  patch 'dinosaurs/:id', to: 'dinosaurs#update'
  delete 'dinosaurs/:id', to: 'dinosaurs#destroy'
end
