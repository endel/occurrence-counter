require 'rubygems'
require 'rubygems/package_task'
require 'rake'
require 'rake/clean'

VERSION = '0.0.1'

spec = Gem::Specification.new do |s|
  s.name = 'occurrence-counter'
  s.version = VERSION
  s.summary = 'Ruby utility to count occurrences from standard data types.'
  s.description = 'Utility to count occurrences from standard data types.'
  s.author = 'Endel Dreyer'
  s.homepage = "http://github.com/endel/occurrence-counter"
  s.email = 'endel.dreyer@gmail.com'
  s.files = %w(LICENSE Rakefile) + Dir.glob("{bin,lib,test}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end

Gem::PackageTask.new(spec) do |p|
  p.need_tar = true
  p.need_zip = true
end

task :install do
  rm_rf "pkg/*.gem"
  `rake gem`
  puts `gem install pkg/occurrence-counter-#{VERSION}.gem`
end
