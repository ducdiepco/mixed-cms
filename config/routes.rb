Rails.application.routes.draw do
  root 'welcome#index'

  # admin dashboard
  namespace :admin do
    resources :leads

    root to: "leads#index"
  end

  # cms admin
  mount_push_type admin: 'cms'
end
