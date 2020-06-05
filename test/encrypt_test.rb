require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_it_exists
    encrypt = Encrypt.new
    assert_instance_of Encrypt, encrypt
  end

  def test_it_generates_five_digit_key
    encrypt = Encrypt.new
    assert_equal 5, encrypt.key.length
  end

end
