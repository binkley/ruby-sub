# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lefty/version'

Gem::Specification.new do |spec|
  spec.name          = 'lefty'
  spec.version       = Lefty::VERSION
  spec.authors       = ['B. K. Oxley (binkley)']
  spec.email         = ['binkley@alumni.rice.edu']

  spec.summary       = 'I am the left.'
  spec.description   = 'I am not the right.'
  spec.homepage      = 'http://no.where'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  # TODO: rubocop-rspec falls over
  # spec.add_development_dependency 'rubocop-rspec'
end
