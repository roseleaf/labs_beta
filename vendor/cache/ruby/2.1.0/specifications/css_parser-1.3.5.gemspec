# -*- encoding: utf-8 -*-
# stub: css_parser 1.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "css_parser"
  s.version = "1.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alex Dunae"]
  s.date = "2013-08-24"
  s.description = "A set of classes for parsing CSS in Ruby."
  s.email = "code@dunae.ca"
  s.homepage = "https://github.com/alexdunae/css_parser"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby CSS parser."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
    else
      s.add_dependency(%q<addressable>, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 0"])
  end
end
