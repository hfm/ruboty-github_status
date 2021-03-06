# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/github_status/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-github_status"
  spec.version       = Ruboty::GithubStatus::VERSION
  spec.authors       = ["Takahiro OKUMURA"]
  spec.email         = ["hfm.garden@gmail.com"]
  spec.summary       = %q{Display current GitHub status with messages for Ruboty}
  spec.description   = %q{Display current GitHub status with messages for Ruboty}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
