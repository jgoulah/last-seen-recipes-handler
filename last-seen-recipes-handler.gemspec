# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "last-seen-recipes-handler/version"

Gem::Specification.new do |s|
  s.name          = 'last-seen-recipes-handler'
  s.version       = LastSeenRecipesHandler::VERSION
  s.date          = '2012-06-26'
  s.summary       = "A plugin for Chef::Knife which displays node metadata about the last chef run."
  s.description   = s.summary
  s.authors       = ["John Goulah"]
  s.email         = ["jgoulah@gmail.com"]
  s.homepage      = "https://github.com/jgoulah/last-seen-recipes-handler"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
