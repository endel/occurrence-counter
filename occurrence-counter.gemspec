VERSION = '0.0.1'

spec = Gem::Specification.new do |s|
  s.name = 'occurrence-counter'
  s.version = VERSION
  s.summary = 'Ruby utility to count occurrences from standard data types.'
  s.description = 'Utility to count occurrences from standard data types.'
  s.author = 'Endel Dreyer'
  s.homepage = "http://github.com/endel/occurrence-counter"
  s.email = 'endel.dreyer@gmail.com'
  s.files = %w(LICENSE) + Dir.glob("{bin,lib,test}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end