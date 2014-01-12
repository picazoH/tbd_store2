source 'https://rubygems.org'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do

  #gem 'datashift'
  #gem 'datashift_spree'

  #Enable admin store://require admin/spree_clean
  #gem 'spree_clean', :git => "https://github.com/spree/spree_clean.git", :tag => 'v1.0.6'
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler', '1.1.1'
  gem 'capistrano-rails', '1.1.0'
  #gem 'rvm-capistrano' rvm-capistrano (>= 0) ruby depends on capistrano (~> 2.15.4) ruby
  gem 'zeus', '0.13.4.pre2'
end

group :test do
  gem 'capybara','2.1.0'
  gem 'cucumber-rails','1.3.0', :require => false
end

group :production do
  gem 'puma'
  #gem 'therubyracer' no need it we have nodejs, only required for 0.70.x or later
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

#OFFICIAL

gem 'spree',  :git => 'https://github.com/spree/spree.git', branch: '2-0-stable'

gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-0-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-0-stable'

#i18n
gem 'spree_i18n', :git => 'https://github.com/spree/spree_i18n.git', :branch => '2-0-stable'

#NOT OFFICIAL

#2BEDIGITAL
gem 'spree_kiala', :git => 'https://github.com/picazoH/spree_kiala.git', :branch => 'master'
#gem 'spree_kiala', :path => '../spree_kiala'

gem 'spree_sermepa', :git => 'https://github.com/picazoH/spree_sermepa.git', :branch => 'master'
#gem 'spree_sermepa', :path => '../spree_sermepa'

gem 'spree_variant_all_options', :git => 'https://github.com/picazoH/spree_variant_all_options.git', :branch => 'master'
#gem 'spree_variant_all_options', :path => '../spree/spree_variant_all_options'

