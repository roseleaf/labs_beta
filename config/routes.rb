ZenlabsBeta::Application.routes.draw do
  # get "session/create"

  # get "session/destroy"

  get "ember/start"

  namespace :api do
    namespace :v1 do
      resources :extensions, :defaults => { :format => 'json' }
      resources :jobs, :defaults => { :format => 'json' }
      match 'extensions/github_push' => 'extensions#github_push', :via => :post
      match 'extensions/github_pull' => 'extensions#github_pull'
      match "get_auth_url" => 'zendesk_client#get_auth_url'#, :via => :get
      match "zendesk_client/callback" => 'zendesk_client#callback', :via => :get
      match "passback" => 'zendesk_client#passback'
      match "query_job" => 'zendesk_client#query_job'
      #match "set_account" => 'zendesk_client#set_account'#, :via => :post
    end
  end

  root :to => 'ember#start'
  
  mount JasmineRails::Engine => '/spec' if defined?(JasmineRails)

end
