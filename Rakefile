require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "couchpop"
    gem.version = File.read('VERSION')
    gem.summary = %Q{Push the contents of a directory to a CouchDB document}
    gem.description = %Q{Couchpop uploads a directory to CouchDB}
    gem.email = "paul@rslw.com"
    gem.homepage = "http://github.com/paulca/couchpop"
    gem.authors = ["Paul Campbell"]
    gem.add_dependency "couchrest", "1.0.1"
    gem.files = FileList["[A-Z]*", "lib/**/*", "app/**/*"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "couchpop #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
