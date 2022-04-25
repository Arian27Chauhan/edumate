# -*- encoding: utf-8 -*-
# stub: omniauth-github 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-github".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Bleigh".freeze]
  s.date = "2022-04-25"
  s.description = "Official OmniAuth strategy for GitHub.".freeze
  s.email = ["michael@intridea.com".freeze]
  s.files = [".github/workflows/ruby.yml".freeze, ".gitignore".freeze, ".rspec".freeze, "Gemfile".freeze, "Guardfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "lib/omniauth-github.rb".freeze, "lib/omniauth-github/version.rb".freeze, "lib/omniauth/strategies/github.rb".freeze, "omniauth-github.gemspec".freeze, "spec/omniauth/strategies/github_spec.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "https://github.com/intridea/omniauth-github".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Official OmniAuth strategy for GitHub.".freeze
  s.test_files = ["spec/omniauth/strategies/github_spec.rb".freeze, "spec/spec_helper.rb".freeze]

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<omniauth>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.7.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
  else
    s.add_dependency(%q<omniauth>.freeze, ["~> 2.0"])
    s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.7.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
