source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'bootstrap-sass'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'debugger'
  gem 'pg' # for test thinking sphinx 
end

#gem 'haml'
#gem 'haml-rails'

gem 'koala'
gem 'oauth2', '~> 0.8.0'
gem 'thinking-sphinx', '~> 2.0.12'
gem 'ts-delayed-delta', '~> 1.1.3'
gem 'delayed_job_active_record'
gem "paperclip", "~> 3.1.4"
gem "aws-sdk", "~> 1.5.7"
gem "devise", "~> 2.1.2"
gem "rolify"
gem "rails_admin", :git => 'git://github.com/sferik/rails_admin.git', :ref => 'f223184dbe8efc39891e6be5a28ed7e4b0710e80'
gem "cancan"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
