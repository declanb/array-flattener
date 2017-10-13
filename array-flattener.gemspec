# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "array-flattener"
  spec.version = '1.0'
  spec.authors = ["Declan Butler"]
  spec.email = ["declan.butler@gmail.com"]
  spec.summary = %q{Short summary of your project}
  spec.description = %q{Longer description of your project.}
  spec.homepage = "http://domainforproject.com/"
  spec.license = "MIT"

  spec.files = ['lib/array-flattener.rb']
  spec.executables = ['bin/array-flattener']
  spec.test_files = ['tests/test_array-flattener.rb']
  spec.require_paths = ["lib"]
end