# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'food2fork/version'

Gem::Specification.new do |gem|
  gem.name        = 'food2fork'
  gem.version     = Food2Fork::VERSION
  gem.authors     = ["Creo Mark"]
  gem.email       = 'contact@7precisions.com'
  gem.description = %q{A Ruby gem for accessing the Food2Fork api}
  gem.summary     = %q{A Ruby gem for accessing the Food2Fork api}
  gem.homepage    = "https://github.com/CreoMark/food2fork-ruby"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'httparty', '~> 0', '0.13.5'
  gem.license       = 'GNU'
end