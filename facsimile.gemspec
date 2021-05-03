# frozen_string_literal: true

require_relative "lib/facsimile/version"

Gem::Specification.new do |spec|
  spec.name          = "facsimile"
  spec.version       = Facsimile::VERSION
  spec.authors       = [ "Allen Rettberg" ]
  spec.email         = [ "allen.rettberg@freshly.com" ]

  spec.summary       = "Seamless type casting for Protobuf"
  spec.homepage      = "https://github.com/Freshly/facsimile"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/Freshly/facsimile/blob/main/CHANGELOG.md"

  spec.files = Dir["README.md", "CHANGELOG.md", "LICENSE.txt", "src/ruby/lib/**/{*,.[a-z]*}"]
  spec.require_paths = %w[ lib ]
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_dependency "google-protobuf", "~> 3.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "spicerack-styleguide", "~> 0.25"
end
