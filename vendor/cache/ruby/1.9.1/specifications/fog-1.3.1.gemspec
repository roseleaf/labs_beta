# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fog"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["geemus (Wesley Beary)"]
  s.date = "2012-03-27"
  s.description = "The Ruby cloud services library. Supports all major cloud providers including AWS, Rackspace, Linode, Blue Box, StormOnDemand, and many others. Full support for most AWS services including EC2, S3, CloudWatch, SimpleDB, ELB, and RDS."
  s.email = "geemus@gmail.com"
  s.executables = ["fog"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["bin/fog", "README.rdoc"]
  s.homepage = "http://github.com/fog/fog"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "fog"
  s.rubygems_version = "2.0.7"
  s.summary = "brings clouds to you"

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<excon>, ["~> 0.13.0"])
      s.add_runtime_dependency(%q<formatador>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<net-scp>, ["~> 1.0.4"])
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.1.3"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<ruby-hmac>, [">= 0"])
      s.add_development_dependency(%q<jekyll>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rbvmomi>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_development_dependency(%q<rbovirt>, [">= 0.0.9"])
      s.add_development_dependency(%q<shindo>, ["~> 0.3.4"])
      s.add_development_dependency(%q<virtualbox>, ["~> 0.9.1"])
      s.add_development_dependency(%q<fission>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<excon>, ["~> 0.13.0"])
      s.add_dependency(%q<formatador>, ["~> 0.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<net-scp>, ["~> 1.0.4"])
      s.add_dependency(%q<net-ssh>, [">= 2.1.3"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
      s.add_dependency(%q<ruby-hmac>, [">= 0"])
      s.add_dependency(%q<jekyll>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rbvmomi>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_dependency(%q<rbovirt>, [">= 0.0.9"])
      s.add_dependency(%q<shindo>, ["~> 0.3.4"])
      s.add_dependency(%q<virtualbox>, ["~> 0.9.1"])
      s.add_dependency(%q<fission>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<excon>, ["~> 0.13.0"])
    s.add_dependency(%q<formatador>, ["~> 0.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<net-scp>, ["~> 1.0.4"])
    s.add_dependency(%q<net-ssh>, [">= 2.1.3"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
    s.add_dependency(%q<ruby-hmac>, [">= 0"])
    s.add_dependency(%q<jekyll>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rbvmomi>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    s.add_dependency(%q<rbovirt>, [">= 0.0.9"])
    s.add_dependency(%q<shindo>, ["~> 0.3.4"])
    s.add_dependency(%q<virtualbox>, ["~> 0.9.1"])
    s.add_dependency(%q<fission>, [">= 0"])
  end
end
