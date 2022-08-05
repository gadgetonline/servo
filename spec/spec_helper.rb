# frozen_string_literal: true

require 'bundler/setup'

Bundler.setup

require 'debug'
require 'factory_bot'
require 'faker'
require 'servo'

File.expand_path('..', __FILE__).tap do |root_dir|
  Dir[File.join(root_dir, 'config/initializers/**/*.rb')].sort.each { |f| require f }
  Dir[File.join(root_dir, 'support', '**', '*.rb')].sort.each { |f| require f }
end

