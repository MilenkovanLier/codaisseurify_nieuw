Rails.application.routes.draw do
  root "artists#index"

  get "artists" => "artists#index"
  get 'artists/new' => "artists#new", as: :new_artist
  get "artists/:id" => "artists#show", as: :artist

  post "artists" => "artists#create"
  delete "artists/:id" => "artists#destroy"

  get "songs" =>"songs#index"
  get 'songs/new' => "songs#new", as: :new_song
  get "songs/:id" => "songs#show", as: :song

  post "songs" => "songs#create"
  delete "songs/:id" => "songs#destroy"


end
