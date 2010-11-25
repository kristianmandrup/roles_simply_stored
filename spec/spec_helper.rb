require 'rspec/core'
require 'rails' 
require 'simply_stored/couch'
require 'roles_simply_stored'

CouchPotato::Config.database_name = "http://localhost:5984/roles_simply_stored"

RSpec.configure do |config|
  config.mock_with :mocha
end


