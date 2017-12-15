# Load the Rails application.
require_relative 'application'
local_env = File.join(Rails.root, 'config', 'local_env.rb')
load(local_env) if File.exists?(local_env)
# Initialize the Rails application.
Rails.application.initialize!
Rails.application.routes.default_url_options[:host] = 'localhost:3000'
