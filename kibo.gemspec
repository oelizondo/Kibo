# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kibo/version'

Gem::Specification.new do |spec|
  spec.name          = "kibo-rb"
  spec.version       = Kibo::VERSION
  spec.authors       = ["oelizondo"]
  spec.email         = ["oscarmarcelo95@gmail.com"]

  spec.summary       = %q{Kibo is a small library that implements classic algorithms like binary search, sorts, etc..}
  spec.description   = %q{Kibo is a small library that implements classic algorithms like binary search, merge, sort, bubble sorts, etc..}
  spec.homepage      = "https://github.com/oelizondo/Kibo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
