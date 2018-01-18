Rails.application.routes.draw do
  root 'welcome#index'
  namespace :admin do
    resources :leads

    root to: "leads#index"
  end
  mount_push_type admin: 'cms'
end
