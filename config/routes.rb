Rails.application.routes.draw do
  get 'top' => 'homes#top'
  get 'todolists/new'
  post 'todolists' => 'todolists#create'
end
