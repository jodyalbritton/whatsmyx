# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ajax-chosen-rails"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Broadbent"]
  s.date = "2012-05-08"
  s.description = "Chosen is a javascript library of select box enhancer for jQuery and Protoype. This gem integrates Ajax-Chosen with Rails asset pipeline for ease of use."
  s.email = ["nathan.f77@gmail.com"]
  s.homepage = "https://github.com/fatfreecrm/ajax-chosen-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Integrate Ajax-Chosen javascript library with Rails asset pipeline"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 3.0"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14"])
      s.add_runtime_dependency(%q<chosen-rails_ffcrm>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0"])
      s.add_development_dependency(%q<sass>, ["~> 3.1"])
    else
      s.add_dependency(%q<railties>, ["~> 3.0"])
      s.add_dependency(%q<thor>, ["~> 0.14"])
      s.add_dependency(%q<chosen-rails_ffcrm>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<sass>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.0"])
    s.add_dependency(%q<thor>, ["~> 0.14"])
    s.add_dependency(%q<chosen-rails_ffcrm>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<sass>, ["~> 3.1"])
  end
end
