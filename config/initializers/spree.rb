# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.default_country_id = 175
  config.admin_interface_logo = 'logo/admin_tobe_bg.png'
  config.logo = '2bD-logo.png'
  config.allow_ssl_in_production = false
  #SpreeSocialProducts Spree::Config.facebook_app_id = '572946162728681' Rails console
  config.address_requires_state = true
  config.allow_guest_checkout = false
  config.products_per_page = 12
  config.company = true

  #inventory, stocks, shipping
  config.track_inventory_levels = true
  #removed in 2-4-stable config.allow_backorder_shipping = true
  config.shipping_instructions = true
  config.currency =  "EUR"

  #Spree::Image config
  # Spree::Image.attachment_definitions[:attachment][:styles] = ActiveSupport::JSON.decode('{"mini":"48x48\u003E","small":"100x100\u003E","product":"240x240\u003E","large":"600x600\u003E"}').symbolize_keys!
  # # Split environments
  # https://gist.github.com/radar/e414c49579b393e4aafe, http://guides.spreecommerce.com/release_notes/spree_2_2_0.html
  # # Spree::Image.attachment_definitions[:attachment][:path] = "/#{Rails.env}/:id/:style/:basename.:extension"
  # Spree::Image.attachment_definitions[:attachment][:path] = "images/:id/:style/:basename.:extension"
  # Spree::Image.attachment_definitions[:attachment][:url] = '/spree/products/:id/:style/:basename.:extension'
  # Spree::Image.attachment_definitions[:attachment][:default_url] = ''
  # Spree::Image.attachment_definitions[:attachment][:default_style] = 'product'

end

#ActiveMerchant::Billing::Base.integration_mode = :test

#Spree.user_class = "Spree::LegacyUser"
Spree.user_class = "Spree::User"

SpreeI18n::Config.available_locales = [:es, :en, :fr] # displayed on translation forms
SpreeI18n::Config.supported_locales = [:es, :en, :fr] # displayed on frontend select box
