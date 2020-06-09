require './test/test_helper'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new("12345")
    assert_instance_of Key, key
  end

  def test_it_has_attributes
    key = Key.new("12345")
    assert_equal "12345", key.key
  end

  def test_it_splits_key_into_hash
    key = Key.new("12345")
    key.generate_key
    assert_equal 4, key.generate_key.length
  end

  def test_it_generates_key
    key = Key.new("12345")
    expected = {:A=>12, :B=>23, :C=>34, :D=>45}
    assert_equal expected, key.generate_key
  end

  def test_it_works_with_random_generation_of_key
    key = Key.new(rand(0..99999).to_s.ljust(5, '0'))
    assert_equal 5, key.key.length
    assert_equal 4, key.generate_key.length
  end
end
