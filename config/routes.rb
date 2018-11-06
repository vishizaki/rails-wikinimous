Rails.application.routes.draw do
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/create'
  # get 'articles/edit'
  # get 'articles/update'
  # get 'articles/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, except: [:edit, :delete]
  get "articles/:id/edit", to: "articles#edit", as: "editArticle"
  delete "articles/:id", to: "articles#destroy"
end
