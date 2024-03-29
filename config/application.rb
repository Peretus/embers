require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Remory
  class Application < Rails::Application
    config.action_mailer.default_url_options = {:host => "localhost:3000"}

    # Add the fonts path
    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf ) 
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    ActionMailer::Base.smtp_settings = {
        :port =>           '587',
        :address =>        'smtp.mandrillapp.com',
        :user_name =>      ENV['MANDRILL_USERNAME'],
        :password =>       ENV['MANDRILL_APIKEY'],
        :domain =>         'heroku.com',
        :authentication => :plain
    }
    ActionMailer::Base.delivery_method = :smtp
  end
end
