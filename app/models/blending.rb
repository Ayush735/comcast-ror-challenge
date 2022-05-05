# frozen_string_literal: true

# Des: Its a module to extent functionality to another class.
module Blending
  # Des: Another module.
  module InstanceMethods
    def make_juice
      puts '--- ** -- Juice is ready -- ** ---'
    end
  end

  def self.included(base)
    base.send :include, InstanceMethods
    # Below callback will run only for Apple class
    base.after_save :make_juice, if: proc { base.name == 'Apple' }
  end
end
