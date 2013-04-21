# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sniffux/version'

Gem::Specification.new do |gem|
  gem.name          = "sniffux"
  gem.version       = Sniffux::VERSION
  gem.authors       = ["Simon George"]
  gem.email         = ["simon@sfcgeorge.co.uk"]
  gem.description   = %q{Use user-agent string to reason about UX expectations. E.g. Should the Cancel button in dialigues be on the left or the right?}
  gem.summary       = %q{Reason about UX expectations.}
  gem.homepage      = "http://www.sfcgeorge.co.uk/posts/2013/04/20/enhancing-web-ux-consistency-sniffux"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_runtime_dependency "useragent", "~> 0.5.0"
end
