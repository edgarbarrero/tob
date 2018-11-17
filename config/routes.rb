Rails.application.routes.draw do

  get '/colour', to: 'colour#show'
  get '/colour/edit', to: 'colour#edit'
  patch '/colour', to: 'colour#update'
  root to: 'portal#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
