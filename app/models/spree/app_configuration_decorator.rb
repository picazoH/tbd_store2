Spree::AppConfiguration.class_eval do
  preference :country_configuration, :array, :default => [:RU, :ES]
end