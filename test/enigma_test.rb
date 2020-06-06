require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new("string")
    assert_instance_of Enigma, enigma
  end

  def test_it_starts_with_default_attributes
    enigma = Enigma.new("string")
    assert_equal 5, enigma.key.length
    assert_equal Time.new.strftime("%d%m%y"), enigma.offset
  end
end
