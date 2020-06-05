require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new("message")
    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new("message")
    assert_equal "message", enigma.message
    assert_instance_of Hash, enigma.key
    assert_equal 4, enigma.key.length
    assert_instance_of Hash, enigma.date
    assert_equal 4, enigma.date.length
  end

  def test_it_finds_full_alphabet
    enigma = Enigma.new("message")
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, enigma.alphabet
    assert_equal 27, enigma.alphabet.length
  end

  def test_it_totals_key_and_date_hash_keys
    enigma = Enigma.new("message")
    assert_equal 4, enigma.shift.length
    assert_equal [:A, :B, :C, :D], enigma.shift.keys
  end
end
