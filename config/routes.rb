Rails.application.routes.draw do
  get 'item/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/health', to: ->(_) { [200, {}, ['']] }
end
