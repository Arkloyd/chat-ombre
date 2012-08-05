$:.unshift 'lib'

require 'rake/testtask'

Rake::TestTask.new do |tt|
  tt.libs.push "lib"
  tt.test_files = FileList['t/*_test.rb']
  tt.verbose = false
end
