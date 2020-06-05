require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new("040895")
    assert_instance_of Offset, offset
  end

  def test_it_finds_last_digits_of_squared_date
    offset = Offset.new("040895")
    assert_equal "1025", offset.generate_offset
  end

  def test_it_splits_offset_into_hash
    offset = Offset.new("040895")
    offset.generate_offset
    assert_equal 4, offset.final_offset.length
    expected = ({A: 1, B: 0, C: 2, D: 5})
    assert_equal expected, offset.final_offset
  end
end
