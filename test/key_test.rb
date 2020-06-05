require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class EncryptTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_it_generates_five_digit_key
    key = Key.new
    assert_equal 5, key.generate_key.length
  end

  def test_it_splits_key_into_hash
    key = Key.new
    key.generate_key
    assert_equal 4, key.final_key.length
  end
end
