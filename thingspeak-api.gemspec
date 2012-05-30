# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'thingspeak/version'
 
Gem::Specification.new do |s|
  s.name        = "thingspeak-api"
  s.version     = ThingSpeak::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = "Daniel Treacy"
  s.email       = "daniel.t.treacy@gmail.com"
  s.homepage    = "http://github.com/danieltreacy/thingspeak-api"
  s.summary     = "Ruby DSL for interacting with ThingSpeak API"
  s.description = "A wrapper for the ThingSpeak API to make interacting with your ThingSpeak channels easy from Ruby-based applications"
 
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "rest-client"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.require_path = 'lib'
end