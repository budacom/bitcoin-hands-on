ENV['BUNDLE_GEMFILE'] ||= File.expand_path('./Gemfile', __dir__)

# Set up gems listed in the Gemfile.
require 'bundler/setup'
Bundler.require(:default)

TOPLEVEL_BINDING.pry