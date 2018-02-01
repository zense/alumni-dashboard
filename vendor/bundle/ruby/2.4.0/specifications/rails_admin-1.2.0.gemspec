# -*- encoding: utf-8 -*-
# stub: rails_admin 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Erik Michaels-Ober".freeze, "Bogdan Gaza".freeze, "Petteri Kaapa".freeze, "Benoit Benezech".freeze, "Mitsuhiro Shibuya".freeze]
  s.date = "2017-05-31"
  s.description = "RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data.".freeze
  s.email = ["sferik@gmail.com".freeze, "bogdan@cadmio.org".freeze, "petteri.kaapa@gmail.com".freeze]
  s.homepage = "https://github.com/sferik/rails_admin".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Admin for Rails".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_runtime_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0"])
      s.add_runtime_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
      s.add_runtime_dependency(%q<nested_form>.freeze, ["~> 0.3"])
      s.add_runtime_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
      s.add_runtime_dependency(%q<remotipart>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<builder>.freeze, ["~> 3.1"])
      s.add_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
      s.add_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0"])
      s.add_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
      s.add_dependency(%q<nested_form>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
      s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<remotipart>.freeze, ["~> 1.3"])
      s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.1"])
    s.add_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
    s.add_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
    s.add_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
    s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0"])
    s.add_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
    s.add_dependency(%q<nested_form>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
    s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<remotipart>.freeze, ["~> 1.3"])
    s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end
