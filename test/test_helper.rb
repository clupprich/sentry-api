require 'minitest/autorun'
require 'minitest/spec'
require 'webmock/test_unit'
require 'vcr'
require File.expand_path('../../lib/sentry.rb', __FILE__)

VCR.configure do |config|
  config.cassette_library_dir = './fixtures/vcr_cassettes'
  config.hook_into :webmock
end
