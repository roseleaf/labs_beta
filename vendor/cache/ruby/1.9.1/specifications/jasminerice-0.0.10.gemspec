# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jasminerice"
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Phelan"]
  s.date = "2012-10-15"
  s.description = "Full support for the Rails 3.1 asset pipeline when bdd'ing your coffeescript or javascript using jasmine"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Pain free coffeescript unit testing for Rails 3.1 using jasmine"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<coffee-rails>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
  end
end
