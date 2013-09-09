ZenlabsBeta::Application.routes.draw do
  get "ember/start"

  # resources :extensions
  # root :to => 'extensions#index'
  namespace :api do
    namespace :v1 do
      resources :extensions, :defaults => { :format => 'json' }
      match 'extensions/github_push' => 'extensions#github_push', :via => :post 
    end
  end

  root :to => 'ember#start'
  
  mount JasmineRails::Engine => '/spec' if defined?(JasmineRails)

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
