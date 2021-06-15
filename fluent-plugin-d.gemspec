# -*- encoding: utf-8 -*-
# stub: fluent-plugin-syslog-tls 2.0.0 ruby lib

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syslog_tls/version'

Gem::Specification.new do |s|
  s.name = "fluent-plugin-d".freeze
  s.version = SyslogTls::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  s.files += Dir['[A-Z]*'] + Dir['test/**/*']
  s.authors = ["Juan Manuel Cristóbal".freeze]
  s.date = "2021-06-14"
  s.description = "Syslog TLS output plugin with formatting support, for Fluentd".freeze
  s.email = ["tm@iprog.com".freeze]
  s.homepage = "https://github.com/juanmcristobal/fluent-plugin-syslog-d".freeze
  s.licenses = ["Apache v2".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Fluent Syslog TLS output plugin for D".freeze
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<fluentd>.freeze, [">= 0.14.0", "< 2"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.8"])
    s.add_development_dependency(%q<minitest-stub_any_instance>.freeze, ["~> 1.0.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.1"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.11"])
  else
    s.add_dependency(%q<fluentd>.freeze, [">= 0.14.0", "< 2"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.8"])
    s.add_dependency(%q<minitest-stub_any_instance>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.1"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.11"])
  end
end

