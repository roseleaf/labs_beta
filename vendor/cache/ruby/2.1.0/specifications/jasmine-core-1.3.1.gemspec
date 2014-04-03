# -*- encoding: utf-8 -*-
# stub: jasmine-core 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jasmine-core"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rajan Agaskar", "Davis W. Frank", "Christian Williams"]
  s.date = "2012-12-03"
  s.description = "Test your JavaScript without any framework dependencies, in any environment, and with a nice descriptive syntax."
  s.email = "jasmine-js@googlegroups.com"
  s.homepage = "http://pivotal.github.com/jasmine"
  s.licenses = ["MIT"]
  s.rubyforge_project = "jasmine-core"
  s.rubygems_version = "2.2.2"
  s.summary = "JavaScript BDD framework"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<json_pure>, [">= 1.4.3"])
      s.add_development_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<sass>, [">= 0"])
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<ragaskar-jsdoc_helper>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fuubar>, [">= 0"])
      s.add_development_dependency(%q<awesome_print>, [">= 0"])
      s.add_development_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, ["= 1.7"])
      s.add_development_dependency(%q<rocco>, [">= 0"])
      s.add_development_dependency(%q<rdiscount>, [">= 0"])
    else
      s.add_dependency(%q<json_pure>, [">= 1.4.3"])
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<ragaskar-jsdoc_helper>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fuubar>, [">= 0"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<redcarpet>, ["= 1.7"])
      s.add_dependency(%q<rocco>, [">= 0"])
      s.add_dependency(%q<rdiscount>, [">= 0"])
    end
  else
    s.add_dependency(%q<json_pure>, [">= 1.4.3"])
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<ragaskar-jsdoc_helper>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fuubar>, [">= 0"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<redcarpet>, ["= 1.7"])
    s.add_dependency(%q<rocco>, [">= 0"])
    s.add_dependency(%q<rdiscount>, [">= 0"])
  end
end
