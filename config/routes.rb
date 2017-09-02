Rails.application.routes.draw do

  root           to: 'board#home'
  get '/home',   to: 'board#home'
  get '/go',     to: 'board#go'
  get '/back',   to: 'board#back'
  get '/left',   to: 'board#left'
  get '/right',  to: 'board#right'

end
