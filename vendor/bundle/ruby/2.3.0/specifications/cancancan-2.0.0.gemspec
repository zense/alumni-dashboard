# -*- encoding: utf-8 -*-
# stub: cancancan 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cancancan"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alessandro Rodi (Renuo AG)", "Bryan Rite", "Ryan Bates", "Richard Wilson"]
  s.date = "2017-05-18"
  s.description = "Simple authorization solution for Rails. All permissions are stored in a single location."
  s.email = "alessandro.rodi@renuo.ch"
  s.homepage = "https://github.com/CanCanCommunity/cancancan"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.2.1"
  s.summary = "Simple authorization solution for Rails."

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.46"])
      s.add_development_dependency(%q<rake>, [">= 10.1.1", "~> 10.1"])
      s.add_development_dependency(%q<rspec>, [">= 3.2.0", "~> 3.2"])
      s.add_development_dependency(%q<appraisal>, [">= 2.0.0", "~> 2.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rubocop>, ["~> 0.46"])
      s.add_dependency(%q<rake>, [">= 10.1.1", "~> 10.1"])
      s.add_dependency(%q<rspec>, [">= 3.2.0", "~> 3.2"])
      s.add_dependency(%q<appraisal>, [">= 2.0.0", "~> 2.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rubocop>, ["~> 0.46"])
    s.add_dependency(%q<rake>, [">= 10.1.1", "~> 10.1"])
    s.add_dependency(%q<rspec>, [">= 3.2.0", "~> 3.2"])
    s.add_dependency(%q<appraisal>, [">= 2.0.0", "~> 2.0"])
  end
end
