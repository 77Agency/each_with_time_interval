# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'each_with_time_interval/version'

Gem::Specification.new do |gem|
  gem.name          = "each_with_time_interval"
  gem.version       = EachWithTimeInterval::VERSION
  gem.authors       = ["Nikita Cernovs"]
  gem.email         = ["n.cernovs@77agency.com"]
  gem.description   = %q{Iterator with real time intervals}
  gem.summary       = %q{Iterator with real time intervals}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
