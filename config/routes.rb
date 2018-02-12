Rails.application.routes.draw do
  #frontend
  post :sign_up_lead, path: 'leads/sign-up', to: 'leads#create'


  # admin dashboard
  namespace :admin do
    resources :leads

    root to: "leads#index"
  end

  # cms admin
  mount_push_type admin: 'cms', front_end: '/article'
end
