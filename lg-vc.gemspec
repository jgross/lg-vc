# frozen_string_literal: true

require_relative "lib/lg/vc/version"

Gem::Specification.new do |spec|
  spec.name = "lg-vc"
  spec.version = Lg::Vc::VERSION
  spec.authors = ["Jonathan Gross"]
  spec.email = ["jonathan.gross@biodata.com"]

  spec.summary = "Labguru Components."
  spec.description = "A library for our compoentss"
  spec.homepage = "https://github.com/biodata/lg-vc"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
    "public gem pushes."
  end

  spec.files = Dir["lib/**/*", "app/**/*", "config/**/*", "LICENSE.txt", "README.md"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "rails", ">= 6.0.0"
  spec.add_runtime_dependency "view_component", ">= 2.0.0"

  spec.add_development_dependency "capybara", "~> 3"
  spec.add_development_dependency "webdrivers", "~> 5.0"
  spec.add_development_dependency "selenium-webdriver", "~> 4.1"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "sprockets-rails"

  spec.add_development_dependency "haml-rails"
  spec.add_development_dependency "slim"
  spec.add_development_dependency "standard"
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
