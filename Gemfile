source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.2'
gem 'pg'
gem 'puma'

# assets pipeline
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem "nprogress-rails", "~> 0.1.2.3"
gem 'font-awesome-rails'

# handle credential env
gem 'rails_config'
# handle upload file
gem 'remotipart', '~> 1.2'
# handle user roles
gem "rolify"
# handle form
gem 'simple_form'
# handle templating
gem 'slim-rails'
# handle authentication
gem 'devise'
# handle error notifier
gem 'exception_notification'

group :development, :test do
  gem 'byebug'
end

group :development do
	# handle error debuging
  gem 'binding_of_caller'
  gem 'better_errors'
  # handle rails panel, from Chrome extention
  gem 'meta_request'
  # handle clean log assets
  gem 'quiet_assets'
  # handle beauty console
  gem 'awesome_print'
  # handle email catcher
  gem 'letter_opener', "~> 1.1"
  # handle schema documentation
  gem 'annotate'
end

group :production do
  gem 'rails_12factor'
end