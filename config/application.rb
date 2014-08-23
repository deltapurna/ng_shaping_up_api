require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NgShapingUpApi
  class Application < Rails::Application
    config.middleware.use Rack::Cors do
      allow do
        origins 'learn.localhost'
        resource '/products', headers: :any, methods: :get
      end
    end
  end
end
