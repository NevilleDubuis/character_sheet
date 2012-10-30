require 'rubygems'
require 'spork'

ENV['RAILS_ENV'] = 'test'

Spork.prefork do
  require File.expand_path('../../config/environment', __FILE__)
  require 'rspec/rails'


  RSpec.configure do |config|

    config.filter_run focus: true
    config.run_all_when_everything_filtered = true

    config.treat_symbols_as_metadata_keys_with_true_values = true

    config.mock_with :rspec

    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    config.use_transactional_fixtures = true

    config.before(:each) do
      Rails.cache.clear
    end

  end
end

Spork.each_run do
  Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}

  silence_stream(STDERR) do
    load "#{Rails.root.to_s}/db/schema.rb" # use db agnostic schema by default
    # ActiveRecord::Migrator.up('db/migrate') # use migration
  end
end

