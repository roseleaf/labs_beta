# -*- encoding: utf-8 -*-
# stub: showdown-rails 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "showdown-rails"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Josh McArthur"]
  s.date = "2013-08-05"
  s.description = "Showdown.js for Rails 3.1 Asset Pipeline"
  s.email = ["joshua.mcarthur@gmail.com"]
  s.homepage = ""
  s.rubygems_version = "2.2.2"
  s.summary = "Showdown.js for Rails 3.1 Asset Pipeline"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.1"])
      s.add_development_dependency(%q<rails>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
      s.add_dependency(%q<actionpack>, [">= 3.1"])
      s.add_dependency(%q<rails>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
    s.add_dependency(%q<actionpack>, [">= 3.1"])
    s.add_dependency(%q<rails>, [">= 3.1"])
  end
end
