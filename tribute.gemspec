# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tribute/version'

Gem::Specification.new do |spec|
  spec.name          = "tribute"
  spec.version       = Tribute::VERSION
  spec.authors       = ["Zoran"]
  spec.email         = ["zoran@zurb.com"]

  spec.summary       = %q{Native JS @mentions.}
  spec.homepage      = "https://github.com/zurb/tribute"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
