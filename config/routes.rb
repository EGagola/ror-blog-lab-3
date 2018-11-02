Rails.application.routes.draw do
  root "post#home"
  get 'post/list'
  get 'post/new'
  post 'post/create'
  patch 'post/update'
  get 'post/show'
  get 'post/edit'
  get 'post/delete'
  get 'post/update'
end
