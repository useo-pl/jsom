lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jsom/version"

Gem::Specification.new do |spec|
  spec.name          = "jsom"
  spec.version       = JSOM::VERSION
  spec.authors       = ["Mateusz Jarosz"]
  spec.email         = ["mateusz@useo.pl"]

  spec.summary       = 'JSON:API Object Mapper for Ruby'
  spec.description   = 'Ruby implementation of JSON:API standard'
  spec.homepage      = 'https://useo-pl.github.io/jsom'
  spec.license       = 'MIT'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/useo-pl/jsom'
  spec.metadata["changelog_uri"] = 'https://github.com/useo-pl/jsom/releases'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
