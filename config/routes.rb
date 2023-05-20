Rails.application.routes.draw do
  root 'series#index'
  # Rutas para Series
  get '/series', to: 'series#index', as: 'series'
  get '/series/new', to: 'series#new', as: 'new_serie'
  post '/series', to: 'series#create'
  get '/series/:id', to: 'series#show', as: 'serie'
  get '/series/:id/edit', to: 'series#edit', as: 'edit_serie'
  patch '/series/:id', to: 'series#update'
  delete '/series/:id', to: 'series#destroy'

  # Rutas para Películas
  get '/peliculas', to: 'peliculas#index', as: 'peliculas'
  get '/peliculas/new', to: 'peliculas#new', as: 'new_pelicula'
  post '/peliculas', to: 'peliculas#create'
  get '/peliculas/:id', to: 'peliculas#show', as: 'pelicula'
  get '/peliculas/:id/edit', to: 'peliculas#edit', as: 'edit_pelicula'
  patch '/peliculas/:id', to: 'peliculas#update'
  delete '/peliculas/:id', to: 'peliculas#destroy'

  # Rutas para Documentales
  get '/documentales', to: 'documentales#index', as: 'documentales'
  get '/documentales/new', to: 'documentales#new', as: 'new_documental'
  post '/documentales', to: 'documentales#create'
  get '/documentales/:id', to: 'documentales#show', as: 'documental'
  get '/documentales/:id/edit', to: 'documentales#edit', as: 'edit_documental'
  patch '/documentales/:id', to: 'documentales#update'
  delete '/documentales/:id', to: 'documentales#destroy'
end
