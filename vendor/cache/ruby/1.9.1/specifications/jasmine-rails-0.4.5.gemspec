# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jasmine-rails"
  s.version = "0.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Searls", "Mark Van Holstyn", "Cory Flanigan"]
  s.date = "2013-05-28"
  s.description = "Provides a Jasmine Spec Runner that plays nicely with Rails 3.1 assets and sets up jasmine-headless-webkit"
  s.email = ["searls@gmail.com", "mvanholstyn@gmail.com", "seeflanigan@gmail.com"]
  s.homepage = "http://github.com/searls/jasmine-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Makes Jasmine easier on Rails 3.1"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<sprockets-rails>, [">= 0"])
      s.add_runtime_dependency(%q<jasmine-core>, ["~> 1.3"])
      s.add_development_dependency(%q<testbeds>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<sprockets-rails>, [">= 0"])
      s.add_dependency(%q<jasmine-core>, ["~> 1.3"])
      s.add_dependency(%q<testbeds>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<sprockets-rails>, [">= 0"])
    s.add_dependency(%q<jasmine-core>, ["~> 1.3"])
    s.add_dependency(%q<testbeds>, [">= 0"])
  end
end
