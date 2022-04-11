Rails.application.routes.draw do

  root 'animals#index'

  resources :animals do
    resources :sightings do
      end
    end
  end
