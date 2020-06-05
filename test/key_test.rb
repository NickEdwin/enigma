require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class EncryptTest < Minitest::Test

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
end
