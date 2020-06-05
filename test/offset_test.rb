require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_knows_todays_date
    encrypt = Encrypt.new
    assert_equal Time.now.strftime("%d%m%y"), encrypt.todays_date
  end

  def test_it_finds_last_digits_of_squared_date
    encrypt = Encrypt.new
    assert_equal "0400", encrypt.offset
  end
end
