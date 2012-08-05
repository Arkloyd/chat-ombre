$:.unshift '.'
require 't/helper.rb'
require 'minitest/spec'

require 'app/ombre'

describe App::Ombre do
  before do
    @app = App::Ombre.new({ :root_dir => 't/data'})
    refute_nil @app, "App::Ombre built with most basic config."
  end

  describe "Page Objects" do
#    before do
#      @simple1 = @app.pages.get({ :path => 'simple/1' })
#    end
#
#    it "loads the correct file" do
#      assert @simple1.html == IO.read('t/data/share/simple/1.html'), "File contents match."
#    end
  end
end
