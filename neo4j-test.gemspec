# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "neo4j-test/version"

Gem::Specification.new do |s|
  s.name          = "neo4j-test"
  s.version       = Neo4j::Test::VERSION
  s.authors       = ["Volker Pacher"]
  s.email         = ["volker.pacher@gmail.com"]
  s.homepage      = "https://github.com/vpacher/neo4j-test"
  s.summary       = "The neo4j jar files for the impermanent database v#{Neo4j::Test::NEO_VERSION}"
  s.description   = "The Java Jar files for the Neo4j Impermanent graph database "

   s.files        = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.platform      = 'java'
  s.licenses      = ['MIT', 'GPL-2']

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
 end
