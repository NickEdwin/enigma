require './test/test_helper'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new("040895")
    assert_instance_of Offset, offset
  end

  def test_it_has_attributes
    offset = Offset.new("040895")
    assert_equal "040895", offset.date
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

  def test_it_works_with_todays_date
    offset = Offset.new(Time.new.strftime("%d%m%y"))
    assert_equal 4, offset.final_offset.length
  end
end
