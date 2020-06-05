require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_finds_full_alphabet
    enigma = Enigma.new
    assert_equal 27, enigma.alphabet.length

  end
end
