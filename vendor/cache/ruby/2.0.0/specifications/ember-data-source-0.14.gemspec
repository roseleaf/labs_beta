# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ember-data-source"
  s.version = "0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.date = "2013-09-04"
  s.description = "ember-data source code wrapper for use with Ruby libs."
  s.email = ["wycats@gmail.com"]
  s.homepage = "https://github.com/emberjs/data"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "ember-data source code wrapper."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ember-source>, [">= 0"])
    else
      s.add_dependency(%q<ember-source>, [">= 0"])
    end
  else
    s.add_dependency(%q<ember-source>, [">= 0"])
  end
end
