Rails.application.routes.draw do
  # admin dashboard
  namespace :admin do
    resources :leads

    root to: "leads#index"
  end

  # cms admin
  mount_push_type admin: 'cms', front_end: '/article'
end
