ruby '2.4.2'
source 'https://rubygems.org'

gem 'rails', '~> 5.2.0'

gem 'sass-rails', '~> 5.0'
gem 'font-awesome-sass'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'mimemagic', '~> 0.3'
gem 'jquery-rails'
gem 'haml-rails'

group :development do
  gem 'travis'
end

group :production do
  gem 'heroku-deflater'
  gem 'rails_12factor'
end

group :development, :production do
  gem 'unicorn'
end
