# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsom/version'

Gem::Specification.new do |spec|
  spec.name          = 'jsom'
  spec.version       = JSOM::VERSION
  spec.authors       = ['Mateusz Jarosz']
  spec.email         = ['mateusz@useo.pl']

  spec.summary       = 'JSON:API Object Mapper for Ruby'
  spec.description   = 'Ruby implementation of JSON:API standard'
  spec.homepage      = 'https://useo-pl.github.io/jsom'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/useo-pl/jsom'
  spec.metadata['changelog_uri'] = 'https://github.com/useo-pl/jsom/releases'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'rubocop', '~> 0.77'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
end
