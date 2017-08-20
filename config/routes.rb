Rails.application.routes.draw do

  root               to: 'board#home'
  get '/reboot',     to: 'board#reboot'
  get '/sensor',     to: 'board#sensor'

 #resources :board, only: [:home, :reboot]
 #resources :board  

end
