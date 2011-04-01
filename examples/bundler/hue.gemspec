# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hue/version"

Gem::Specification.new do |s|
  s.name        = "hue"
  s.version     = Hue::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christopher Sexton"]
  s.homepage    = "http://basicsofrubygems.heroku.com"
  s.summary     = %q{Prints purdy colors to the console using ANSI escapes}
  s.description = %q{Purdy ANSI Colors}

  s.rubyforge_project = "hue"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~> 2.4.0'
#  s.add_dependency 'gli', '~> 1.2'
#  s.add_dependency 'rainbow', '~> 1.0'
end
