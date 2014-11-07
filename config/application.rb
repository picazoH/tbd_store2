require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TbdStore23
  class Application < Rails::Application
    
    config.to_prepare do
      # Load application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # Load application's view overrides
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    #CloudFlare Middleware
    #require "#{Rails.root}/lib/cloudflare-middleware"
    #config.middleware.insert_before(ActionDispatch::RemoteIp, Rack::CloudFlareMiddleware)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Madrid'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :es

    # TO generate binstubs
    # rake rails:update:bin

    #NEW S3 CONFIG with Paperclip
    # Paperclip::Attachment.default_options[:s3_protocol] = "http"
    # config.paperclip_defaults = {
    #     :storage => :s3,
    #     :s3_host_name => 's3-eu-west-1.amazonaws.com',
    #     :s3_credentials => {
    #         :bucket => ENV["S3_bucket_name"],
    #         :access_key_id => ENV["S3_access_key_id"],
    #         :secret_access_key => ENV["S3_secret_access_key"]
    #     }
    # }

  end

end
