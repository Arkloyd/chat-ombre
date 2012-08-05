require 'minitest/spec'
require 'minitest/autorun'

require 'app/ombre'

describe App::Ombre do
  before do
    @app = App::Ombre.new({ :root_dir => 't/data'})
    refute_nil @app, "App::Ombre built with most basic config."
  end

  describe "Page Objects" do
    before do
    end
  end
end
