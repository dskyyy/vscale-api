# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vscale/version'

Gem::Specification.new do |spec|
  spec.name          = 'vscale-api'
  spec.version       = Vscale::VERSION
  spec.authors       = ['Dmitry Makeev']
  spec.email         = ['dmakeev@gmail.com']
  spec.summary       = %q{Client library for Vscale.io API}
  spec.description   = %q{Client library for Vscale.io API}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'httparty'
end
