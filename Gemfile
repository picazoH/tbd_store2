source 'https://rubygems.org'

ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# https://github.com/laserlemon/figaro , Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file
gem 'figaro', '~> 1.0.0'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
group :development do
  #http://guides.rubyonrails.org/upgrading_ruby_on_rails.html#spring
  gem 'spring'
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-bundler', '~> 1.1.3'
  gem 'capistrano-rails', '~> 1.1.2'
  gem 'spree_mail_view', :git => 'https://github.com/picazoH/spree_mail_view.git', :branch => 'master'
end

group :production do
  gem 'puma', '~> 2.10.2'
  gem 'newrelic_rpm'
  #gem 'therubyracer' no need it we have nodejs, only required for 0.70.x or later
end

gem 'compass', '~> 0.12.7'
gem 'compass-rails', '~> 2.0.0'

gem 'aws-sdk', '~> 1.61.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]

#gem 'non-stupid-digest-assets', :git => 'https://github.com/alexspeller/non-stupid-digest-assets', :branch => 'master'

### Spree Gems ###
gem 'spree',  :git => 'https://github.com/spree/spree.git', branch: '2-4-stable' #Commits on Feb 18, 2015  , 152938fd666173c8514da73a9a7bddabb26df25a

gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-4-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-4-stable'

#i18n
gem 'spree_i18n', :git => 'https://github.com/spree-contrib/spree_i18n', :branch => '2-4-stable'
#gem 'spree_i18n', :path => '../spree/spree_i18n'

#SPREE CONTRIB
gem 'spree_static_content', :git => 'https://github.com/spree-contrib/spree_static_content', :branch => '2-4-stable'

gem 'spree_editor', :git => 'https://github.com/spree-contrib/spree_editor', :branch => '2-4-stable'

gem 'spree_social_products', :git => 'https://github.com/spree-contrib/spree_social_products.git', :branch => '2-4-stable'

#NOT OFFICIAL
gem 'spree_contact_us', :git => 'https://github.com/jdutil/spree_contact_us', :branch => '2-4-stable'

gem 'spree_product_zoom', :git => 'https://github.com/spree-contrib/spree_product_zoom', :branch => 'master' #no 2-4-stable branch yet

gem 'spree_sitemap', :git => 'https://github.com/spree-contrib/spree_sitemap.git', :branch => '2-4-stable'

gem 'spree_bootstrap_frontend', :git => 'https://github.com/200Creative/spree_bootstrap_frontend', :branch => '2-4-stable'

gem 'spree_slider', :git => 'https://github.com/priviterag/spree_slider.git', :branch => 'master'

#2BEDIGITAL
gem 'spree_kiala', :git => 'https://github.com/picazoH/spree_kiala.git', :branch => 'master'
#gem 'spree_kiala', :path => '../spree_kiala'

gem 'spree_sermepa', :git => 'https://github.com/picazoH/spree_sermepa.git', :branch => 'master'
#gem 'spree_sermepa', :path => '../spree_sermepa'

gem 'spree_variant_all_options', :git => 'https://github.com/picazoH/spree_variant_all_options.git', :branch => 'master'
#gem 'spree_variant_all_options', :path => '../spree_variant_all_options'

gem 'spree_store_locator', :git => 'https://github.com/picazoH/spree_store_locator.git', :branch => 'master'