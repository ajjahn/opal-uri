require "bundler/gem_tasks"
require 'opal/rspec/rake_task'

require 'opal-uri'

# Opal-RSpec stubs 'uri', unstub it
config = Opal::Config
if Gem::Version.new(Opal::VERSION) < Gem::Version.new('0.10.0')
  config = Opal::Processor
end
config.stubbed_files.delete('uri')

Opal::RSpec::RakeTask.new(:opal_spec)
task :default => :opal_spec
