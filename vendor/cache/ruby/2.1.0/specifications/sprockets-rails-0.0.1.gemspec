# -*- encoding: utf-8 -*-
# stub: sprockets-rails 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sprockets-rails"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sam Stephenson", "Jeff Kreeftmeijer"]
  s.date = "2009-12-01"
  s.description = "Sprockets JavaScript dependency management and concatenation support for Rails applications"
  s.email = "jeff@80beans.com"
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile"]
  s.homepage = "http://github.com/80beans/sprockets-rails"
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Sprockets JavaScript dependency management and concatenation support for Rails applications"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sprockets>, [">= 1.0.2"])
    else
      s.add_dependency(%q<sprockets>, [">= 1.0.2"])
    end
  else
    s.add_dependency(%q<sprockets>, [">= 1.0.2"])
  end
end
