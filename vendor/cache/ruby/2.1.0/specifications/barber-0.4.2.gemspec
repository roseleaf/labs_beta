# -*- encoding: utf-8 -*-
# stub: barber 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "barber"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["tchak", "twinturbo"]
  s.date = "2013-04-06"
  s.description = "Handlebars precompilation"
  s.email = ["paul@chavard.net", "me@boardcastingadam.com"]
  s.homepage = "https://github.com/tchak/barber"
  s.rubygems_version = "2.2.2"
  s.summary = "Handlebars precompilation toolkit"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
      s.add_runtime_dependency(%q<handlebars-source>, [">= 0"])
      s.add_runtime_dependency(%q<ember-source>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
    else
      s.add_dependency(%q<execjs>, [">= 0"])
      s.add_dependency(%q<handlebars-source>, [">= 0"])
      s.add_dependency(%q<ember-source>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
    end
  else
    s.add_dependency(%q<execjs>, [">= 0"])
    s.add_dependency(%q<handlebars-source>, [">= 0"])
    s.add_dependency(%q<ember-source>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
  end
end
