$:.unshift '.'
require 't/helper.rb'
require 'minitest/spec'

describe "01-load, from Perl" do
  it "iterates the modules to assure they load" do
    Dir["lib/**/*.rb"].each do |mod|
      load("#{mod}") or flunk "Could not load #{mod}"
      pass "Loaded #{mod}"
    end
  end
end

describe "02-simple, from Perl" do
end
