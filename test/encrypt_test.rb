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
    assert_equal 5, encrypt.generate_key.length
  end

  def test_it_knows_todays_date
    encrypt = Encrypt.new
    assert_equal Time.now.strftime("%d%m%y"), encrypt.todays_date
  end

  def test_it_finds_last_digits_of_squared_date
    encrypt = Encrypt.new
    assert_equal "0400", encrypt.offset
  end
end
