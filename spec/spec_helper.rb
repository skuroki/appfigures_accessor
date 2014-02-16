$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'appfigures_accessor'

require 'vcr'
VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
end
