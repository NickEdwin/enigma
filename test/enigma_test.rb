require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new("message", "key", "date")
    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new("message", "key", "date")
    assert_equal "message", enigma.message
    assert_equal "key", enigma.key
    assert_equal "date", enigma.date
  end

  def test_it_finds_full_alphabet
    enigma = Enigma.new("message", "key", "date")
    assert_equal 27, enigma.alphabet.length
  end
end
