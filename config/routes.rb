Rails.application.routes.draw do
  resources :dinosaurs do
    collection do
      get :carnivorous
      get :herbivorous
      # get "carnivorous", to: "dinosaurs#carnivorous", as: :carnivorous_dinosaurs
    end
  end
  # get 'dinosaurs', to: 'dinosaurs#index'
  # get 'dinosaurs/new', to: 'dinosaurs#new'
  # get 'dinosaurs/:id', to: 'dinosaurs#show', as: :dinosaur
  # post 'dinosaurs', to: 'dinosaurs#create'
  # get 'dinosaurs/:id/edit', to: 'dinosaurs#edit'
  # patch 'dinosaurs/:id', to: 'dinosaurs#update'
  # delete 'dinosaurs/:id', to: 'dinosaurs#destroy'
end
