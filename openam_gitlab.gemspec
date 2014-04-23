# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openam_gitlab/version'

Gem::Specification.new do |spec|
  spec.name          = "openam_gitlab"
  spec.version       = OpenamGitlab::VERSION
  spec.authors       = ["Wei Zeng", "Krzysztof Kotlarek"]
  spec.email         = ["gzzengwei@gmail.com", "kotlarek.krzysztof@gmail.com"]
  spec.summary       = %q{Integration of OpenAM authentication for gitlab}
  spec.description   = %q{Integration of OpenAM authentication for gitlab}
  spec.homepage      = "https://github.com/jnsolutions/openam_gitlab"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "openam_auth"

  spec.add_runtime_dependency "railties"
end
