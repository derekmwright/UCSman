# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ucsman/version'

Gem::Specification.new do |spec|
  spec.name          = 'ucsman'
  spec.version       = Ucsman::VERSION
  spec.authors       = ['Derek Wright']
  spec.email         = ['dmwright1@paychex.com']

  spec.summary       = 'A ruby interface to UCS Manager'
  spec.description   = 'A ruby interface to UCS Manager'
  spec.homepage      = ''
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ''
  else
    fail 'RubyGems >= 2.0 is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri', '~> 1.6'
  spec.add_dependency 'rest-client', '~> 1.8'
  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
