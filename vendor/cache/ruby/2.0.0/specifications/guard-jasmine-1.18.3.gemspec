# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-jasmine"
  s.version = "1.18.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Kessler"]
  s.date = "2013-08-31"
  s.description = "Guard::Jasmine automatically tests your Jasmine specs on PhantomJS"
  s.email = ["michi@netzpiraten.ch"]
  s.executables = ["guard-jasmine", "guard-jasmine-debug"]
  s.files = ["bin/guard-jasmine", "bin/guard-jasmine-debug"]
  s.homepage = "https://github.com/netzpirat/guard-jasmine"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-jasmine"
  s.rubygems_version = "2.0.6"
  s.summary = "Guard gem for headless testing with Jasmine"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<childprocess>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<guard>, [">= 1.1.0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<childprocess>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.1.0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<childprocess>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
