# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "zendesk_api"
  s.version = "1.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Davidovitz", "Michael Grosser"]
  s.date = "2013-10-02"
  s.description = "Ruby wrapper for the REST API at http://www.zendesk.com. Documentation at http://developer.zendesk.com."
  s.email = ["support@zendesk.com"]
  s.homepage = "http://developer.zendesk.com"
  s.licenses = ["Apache License Version 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.0.6"
  s.summary = "Zendesk REST API Client"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bump>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.9.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.8.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.8.7"])
      s.add_runtime_dependency(%q<hashie>, [">= 1.2"])
      s.add_runtime_dependency(%q<inflection>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<multipart-post>, [">= 0"])
    else
      s.add_dependency(%q<bump>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<webmock>, ["~> 1.9.0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<faraday>, [">= 0.8.0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.8.7"])
      s.add_dependency(%q<hashie>, [">= 1.2"])
      s.add_dependency(%q<inflection>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<multipart-post>, [">= 0"])
    end
  else
    s.add_dependency(%q<bump>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<webmock>, ["~> 1.9.0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<faraday>, [">= 0.8.0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.8.7"])
    s.add_dependency(%q<hashie>, [">= 1.2"])
    s.add_dependency(%q<inflection>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<multipart-post>, [">= 0"])
  end
end
