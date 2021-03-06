# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "haversine/version"

Gem::Specification.new do |s|
  s.name        = "haversine_distance"
  s.version     = Haversine::VERSION
  s.authors     = ["Jirapong Nanta"]
  s.email       = ["jirapong.nanta@gmail.com"]
  s.homepage    = "https://github.com/jirapong/haversine_distance"
  s.summary     = "Haversine is a formula to calculate the great-circle distance between two points"
  s.description = "Haversine is a formula to calculate the great-circle distance between two points. for instance. km_distance = Haversine.distance(lat_a, lng_a, lat_b, lng_b)"
  s.license       = 'MIT'

  s.rubyforge_project = "haversine"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
