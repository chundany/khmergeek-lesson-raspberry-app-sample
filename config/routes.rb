Rails.application.routes.draw do

  root               to: 'board#home'
  get '/home',       to: 'board#home'
  get '/action',     to: 'board#action'

end
