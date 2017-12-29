# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'happymapper/version'

Gem::Specification.new do |s|
  s.name = %q{nokogiri-happymapper}
  s.version = ::HappyMapper::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [
    "Damien Le Berrigaud",
    "John Nunemaker",
    "David Bolton",
    "Roland Swingler",
    "Etienne Vallette d'Osia",
    "Franklin Webber",
    "Matijs van Zuijlen"
  ]

  s.email = 'matijs@matijs.net'
  s.description = %q{Object to XML Mapping Library, using Nokogiri (fork from John Nunemaker's Happymapper)}
  s.extra_rdoc_files = [ "README.md", "CHANGELOG.md", "License" ]
  s.files = `git ls-files -- lib/*`.split("\n")
  s.homepage = %q{http://github.com/mvz/happymapper}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.required_ruby_version = %q{>= 2.3.0}
  s.summary = %q{Provides a simple way to map XML to Ruby Objects and back again.}
  s.license = "MIT"
  s.test_files = `git ls-files -- spec/*`.split("\n")

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, "~> 1.5" )
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
    else
      s.add_dependency(%q<nokogiri>, "~> 1.5" )
      s.add_dependency(%q<rspec>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<nokogiri>, "~> 1.5" )
    s.add_dependency(%q<rspec>, ["~> 3.0"])
  end
end

