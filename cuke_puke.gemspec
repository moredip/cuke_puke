# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cuke_puke/version"

Gem::Specification.new do |s|
  s.name        = "cuke_puke"
  s.version     = CukePuke::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pete Hodgson"]
  s.email       = ["rubygems@thepete.net"]
  s.homepage    = "http://rubygems.org/gems/cuke_puke"
  s.summary     = %q{The most annoying cucumber formatter EVAR!}
  s.description = %q{Uses the OS X 'say' command to inflict verbal diarrhea on all around!}

  s.rubyforge_project = "cuke_puke"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
