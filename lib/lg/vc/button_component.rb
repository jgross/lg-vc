require 'rails'
require 'action_view'
require 'view_component'
require "active_support/dependencies/autoload"

module Lg
    module Vc
        class ButtonComponent < ::ViewComponent::Base
            def initialize(text:)
                @text = text
            end
  
            def call
                content_tag :button, @text
            end
        end 
    end
end