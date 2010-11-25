require 'spec_helper'
use_roles_strategy :admin_flag

class User 
  include SimplyStored::Couch
  include Roles::SimplyStored
    
  strategy :admin_flag, :default
  valid_roles_are :admin, :guest
end

describe "Roles for Simply Stored: admin_flag" do
  require "roles_simply_stored/strategy/user_setup.rb"    
  require "roles_generic/rspec/api"  
end

