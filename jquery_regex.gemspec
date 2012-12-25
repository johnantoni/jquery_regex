# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery_regex/version'

Gem::Specification.new do |gem|
  gem.name          = "jquery_regex"
  gem.version       = JqueryRegex::VERSION
  gem.authors       = ["John Griffiths"]
  gem.email         = ["john@johnantoni.com"]
  gem.description   = %q{jquery regex selector for rails}
  gem.summary       = %q{see http://james.padolsey.com/javascript/regex-selector-for-jquery/}
  gem.homepage      = "https://github.com/johnantoni/jquery_regex"

  gem.files = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_dependency "railties", "~> 3.1"
  #gem.add_dependency "jquery-rails"
end
