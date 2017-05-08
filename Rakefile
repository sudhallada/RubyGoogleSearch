require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'Sanity_First'
end

#Cucumber::Rake::Task.new(:smokeTest) do |t|
#  t.profile ='Sanity_First'
#end

task :default => :features

