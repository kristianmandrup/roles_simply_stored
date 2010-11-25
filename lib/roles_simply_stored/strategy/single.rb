require 'roles_simply_stored/strategy/shared'

module Roles::SimplyStored
  module Strategy
    module Single
      include Shared
      
      # assigns first valid role from list of roles
      def add_roles *_roles
        new_roles = select_valid_roles(roles)
        self.role = new_roles.first if !new_roles.empty?
      end

      # should remove the current single role (set = nil) 
      # only if it is contained in the list of roles to be removed
      def remove_roles *roles
        roles = roles.flat_uniq
        return nil if roles_diff(roles).empty?       
        set_role(nil) if roles.include?(self.role)
        true
      end            
    end
  end
end