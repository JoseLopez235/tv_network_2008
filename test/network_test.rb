require "minitest/autorun"
require "minitest/pride"
require "./lib/network"
require "./lib/character"
require "./lib/show"

class NetworkTest < Minitest::Test
  def test_should_exists
    nbc = Network.new("NBC")
    assert_instance_of Network, nbc
  end

  def test_should_return_class_attributes
    nbc = Network.new("NBC")
    assert_equal "NBC", nbc.name
    assert_equal []. nbc.shows
  end
end
