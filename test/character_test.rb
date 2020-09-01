require "minitest/autorun"
require "minitest/pride"
require "./lib/character"

class CharacterTest < Minitest::Test
  def test_should_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_instance_of Character, kitt
  end

  def test_should_return_class_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1000000, kitt.salary
  end

  def test_should_return_boolean_depending_on_the_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    assert kitt.name_all_caps?
    assert_equal false, michael_knight.name_all_caps?
  end
end
