# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iterate/version'

Gem::Specification.new do |spec|
  spec.name          = "iterate"
  spec.version       = Iterate::VERSION
  spec.authors       = ["asatou"]
  spec.email         = ["asatou@val.co.jp"]
  spec.description   = %q{add Object#iterate(&block).}
  spec.summary       = %q{Returns a lazy sequence of x, f(x), f(f(x)) etc.}

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec"
end

