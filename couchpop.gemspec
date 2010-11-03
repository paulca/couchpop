# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{couchpop}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Campbell"]
  s.date = %q{2010-11-03}
  s.default_executable = %q{couchpop}
  s.description = %q{Couchpop uploads a directory to CouchDB}
  s.email = %q{paul@rslw.com}
  s.executables = ["couchpop"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/couchpop.rb"
  ]
  s.homepage = %q{http://github.com/paulca/couchpop}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Push the contents of a directory to a CouchDB document}
  s.test_files = [
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<couchrest>, ["= 1.0.1"])
    else
      s.add_dependency(%q<couchrest>, ["= 1.0.1"])
    end
  else
    s.add_dependency(%q<couchrest>, ["= 1.0.1"])
  end
end

