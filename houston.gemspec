# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "houston"

Gem::Specification.new do |s|
  s.name        = "houston"
  s.authors     = ["Mattt Thompson", "Pablo Grigolatto"]
  s.email       = ["m@mattt.me", "pablogrigo@gmail.com"]
  s.homepage    = "http://github.com/pablogrigo/houston"
  s.version     = Houston::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Send Apple Push Notifications"
  s.description = "Houston is a simple gem for sending Apple Push Notifications. Pass your credentials, construct your message, and send it."

  s.add_dependency "commander", "~> 4.1.2"
  s.add_dependency "json", "~> 1.7.3"

  s.add_development_dependency "rspec", "~> 0.6.1"
  s.add_development_dependency "rake",  "~> 0.9.2"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
