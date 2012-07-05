# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "opinio"
  s.version = "0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luiz Felipe Garcia Pereira"]
  s.date = "2012-04-26"
  s.description = "Opinio is an engine used to add comments functionallity to rails 3 applications."
  s.email = ["luiz.felipe.gp@gmail.com"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A rails 3 engine for comments."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
  end
end
