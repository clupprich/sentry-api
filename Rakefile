require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/lib/**/*_test.rb'
  t.verbose = true
end

task default: %w(test)
