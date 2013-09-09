require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sprockets-rails"
    gem.summary = %Q{Sprockets JavaScript dependency management and concatenation support for Rails applications}
    gem.description = %Q{Sprockets JavaScript dependency management and concatenation support for Rails applications}
    gem.email = "jeff@80beans.com"
    gem.homepage = "http://github.com/80beans/sprockets-rails"
    gem.authors = ["Sam Stephenson","Jeff Kreeftmeijer"]
    gem.add_dependency 'sprockets', ">= 1.0.2"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the sprockets plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the sprockets plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Sprockets'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Jeweler::GemcutterTasks.new