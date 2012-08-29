load 'deploy' if respond_to?(:namespace) # cap2 differentiator

# Uncomment if you are using Rails' asset pipeline 
load 'deploy/assets'

Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

# remove this line to skip loading any of the default tasks
load 'config/deploy'

# Add RVM's lib directory to the load path. 
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

# Load RVM's capistrano plugin.
require "rvm/capistrano"
