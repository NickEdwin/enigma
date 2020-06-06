require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  # def test_it_starts_with_default_attributes
  #   enigma = Enigma.new("Hello World!")
  #   assert_equal 4, enigma.key.length
  #   assert_equal 4, enigma.offset.length
  # end

  def test_it_encrypts_a_message
    enigma = Enigma.new
    enigma.encrpt("Hello World!", "02715", "040895")
    assert_equal 
  end
end
