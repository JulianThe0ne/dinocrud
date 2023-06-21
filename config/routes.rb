Rails.application.routes.draw do
  get 'dinosaurs', to: 'dinosaurs#index'
  get 'dinosaurs/:id', to: 'dinosaurs#show'
end
