# frozen_string_literal: true


# frozen_string_literal: true

if ENV.fetch("COVERAGE", false)
  require "simplecov"
  SimpleCov.start do
    add_filter "/spec"

    minimum_coverage 89
    maximum_coverage_drop 2
  end
end




modules = %i[action_controller action_view ]
modules << :action_text if ENV.fetch("VIEW_COMPONENT_FORM_USE_ACTIONTEXT", "false") == "true"


require "lg/vc"
require "rails"
require "bundler/setup"
require 'rspec'
require "capybara/rspec"
require "view_component/test_helpers"
require 'pry'



Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include ViewComponent::TestHelpers, type: :component
  config.include Capybara::RSpecMatchers, type: :component
  config.include ViewComponent::SystemTestHelpers, type: :component
end
