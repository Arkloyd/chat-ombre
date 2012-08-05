$:.unshift '.'
require 't/helper'
require 'minitest/spec'

require 'app/ombre'

describe App::Ombre do
  before do
    @app = App::Ombre.new({ :root_dir => 't/data' })
  end

  it "Has object sanity" do
    refute_nil @app
  end
end
