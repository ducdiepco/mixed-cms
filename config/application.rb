require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Removal
  class Application < Rails::Application
    config.x.settings = Rails.application.config_for :settings
    config.load_defaults 5.1
    config.after_initialize do
      # Select the "main" menu
      PushType.menu :main do
        # Append a new item to end of the menu
        item :admin do
          text  { 'Admin' }
          link  { '/admin' }
          link_options data: { turbolinks: false }
        end
      end
    end
  end
end
