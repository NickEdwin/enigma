require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_knows_todays_date
    offset = Offset.new
    assert_equal Time.now.strftime("%d%m%y"), offset.todays_date
  end

  def test_it_finds_last_digits_of_squared_date
    offset = Offset.new
    assert_equal "4400", offset.generate_offset
  end

  def test_it_splits_offset_into_hash
    offset = Offset.new
    offset.generate_offset
    assert_equal 4, offset.final_offset.length
  end
end
