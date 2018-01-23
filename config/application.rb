require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Removal
  class Application < Rails::Application
    config.assets.quiet = true
    config.generators do |generate|
      generate.helper false
      generate.javascripts false
      generate.request_specs false
      generate.routing_specs false
      generate.stylesheets false
      generate.test_framework :rspec
      generate.view_specs false
    end
    config.action_controller.action_on_unpermitted_parameters = :raise
    config.generators.system_tests = nil
    config.active_job.queue_adapter = :delayed_job

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
