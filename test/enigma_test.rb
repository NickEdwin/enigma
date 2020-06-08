require './test/test_helper'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_encrypts_message_with_known_input
    enigma = Enigma.new
    expected = {encryption: "keder ohulw!", key: "02715", date: "040895"}
    assert_equal expected, enigma.encrypt("Hello World!", "02715", "040895")
  end

  def test_it_encrypts_message_with_todays_date
    enigma = Enigma.new
    assert_equal Time.new.strftime("%d%m%y"), enigma.encrypt("Hello World!", "02715").values[2]
  end

  def test_it_encrypts_message_with_random_key_and_date
    enigma = Enigma.new
    assert_equal 5, enigma.encrypt("Hello World!").values[1].length
  end

  def test_it_decrypts_message_with_todays_date
    enigma = Enigma.new
    assert_equal Time.new.strftime("%d%m%y"), enigma.decrypt("Hello World!", "02715").values[2]
  end

  def test_it_decrypts_message_with_random_key_and_date
    enigma = Enigma.new
    assert_equal 5, enigma.decrypt("Hello World!").values[1].length
  end
end
