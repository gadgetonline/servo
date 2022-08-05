# frozen_string_literal: true

require_relative 'lib/servo/version'

Gem::Specification.new do |spec|
  spec.add_dependency 'activemodel'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'interactor'
  spec.add_dependency 'memery'
  spec.add_dependency 'zeitwerk'

  spec.add_development_dependency 'debug', '>= 1.0.0'
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-faker'
  spec.add_development_dependency 'rubocop-ordered_methods'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rails'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rubocop-thread_safety'
  spec.add_development_dependency 'test-prof'

  spec.authors     = ['Martin Streicher, Gadget Consulting']
  spec.bindir      = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.description = 'A service object with validations, memoization, and more.'
  spec.email       = ['martin.streicher@gadget.consulting']

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
    end

  spec.homepage                    = 'https://github.com/gadgetonline/servo'
  spec.license                     = 'MIT'
  spec.metadata['changelog_uri']   = 'https://github.com/gadgetonline/servo/blob/main/CHANGELOG.md.'
  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/gadgetonline/servo'
  spec.name                        = 'servo'
  spec.required_ruby_version       = Gem::Requirement.new('>= 2.6.0')
  spec.require_paths               = ['lib']
  spec.summary                     = 'A service object with validations, memoization, and more.'
  spec.version                     = Servo::VERSION
  spec.metadata['rubygems_mfa_required'] = 'true'
end
