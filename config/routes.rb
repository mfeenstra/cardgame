Rails.application.routes.draw do
  root to: 'games#root'
  resources :games

  post '/draw', to: 'games#draw', as: 'draw_button'
  get '/draw', to: redirect('games#root')
  post '/shuffle', to: 'games#shuffle', as: 'shuffle_button'
  get '/shuffle', to: redirect('games#root')
  post '/show', to: 'games#show', as: 'show_button'
  get '/show', to: redirect('games#root')
end
