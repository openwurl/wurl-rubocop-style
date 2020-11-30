# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "wurl-rubocop-style"
  s.version = "0.1"
  s.summary = "RuboCop Settings for Wurl Projects"
  s.description = "Code style checking for Wurl Ruby repositories "
  s.homepage = "https://github.com/openwurl/wurl-rubocop-style"
  s.license = "MIT"

  s.files = Dir["README.md", "STYLEGUIDE.md", "LICENSE", "config/*.yml", "lib/**/*.rb", "guides/*.md"]

  s.add_dependency "rubocop", "<= 0.89.0"
  s.add_dependency "rubocop-performance", "<= 1.7.1"
  s.add_dependency "rubocop-rails", "<= 2.7.1"

  s.add_development_dependency "actionview", "~> 5.0"
  s.add_development_dependency "minitest", "~> 5.10"
  s.add_development_dependency "rake", "~> 12.0"

  s.required_ruby_version = ">= 2.1.0"

  s.email = "info@wurl.com"
  s.authors = "GitHub, Wurl"
end
