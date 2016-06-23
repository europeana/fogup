# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fogup/version'

Gem::Specification.new do |spec|
  spec.name          = "fogup"
  spec.version       = Fogup::VERSION
  spec.authors       = ["Richard Doe"]
  spec.email         = ["richard.doe@rwdit.net"]

  spec.summary       = %q{Fog-Fog backup}
  spec.description   = %q{Backup files from one cloud storage provider to another}
  spec.homepage      = "http://github.com/europeana/fogup"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'colorize'
  spec.add_dependency 'fog'
  spec.add_dependency 'mime-types'
  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
