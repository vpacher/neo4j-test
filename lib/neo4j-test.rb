require "neo4j-test/version"


module Neo4j
  module Test

    def self.jars_root
      File.join("#{File.dirname(__FILE__)}", "neo4j-test", "jars")
    end

    def self.load_jars!
      require 'java'
      Dir["#{jars_root}/*.jar"].each {|jar| require jar }
    end

    # This can be used by dependent gems to verify the Database versions have no mismatch.
    def self.ensure_version!(other, edition)
      return if ::Neo4j::Test::NEO_VERSION == other
      raise "Mismatch of Neo4j JAR versions. Already loaded neo4j-community JAR files '#{::Neo4j::Test::NEO_VERSION}' but neo4j-#{edition}: '#{other}'." 
    end

  end
end

Neo4j::Test.load_jars!

