require './test/test_helper'

class EncryptionTest < Minitest::Test

  def test_it_exists
    encryption = Encryption.new("Hello World!", "02715", "040895")
    assert_instance_of Encryption, encryption
  end

  def test_it_has_attributes
    encryption = Encryption.new("Hello World!", "02715", "040895")
    assert_equal "Hello World!", encryption.string
    expected = {:A=>2, :B=>27, :C=>71, :D=>15}
    assert_equal expected, encryption.key
    expected = {A: 1, B: 0, C: 2, D: 5}
    assert_equal expected, encryption.date
  end

  def test_it_finds_full_alphabet
    encryption = Encryption.new("Hello World!", "02715", "040895")
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, encryption.alphabet
    assert_equal 27, encryption.alphabet.length
  end


  def test_it_totals_key_and_date_hash_keys
    encryption = Encryption.new("Hello World!", "02715", "040895")
    assert_equal 4, encryption.shift.length
    assert_equal [:A, :B, :C, :D], encryption.shift.keys
    expected = {A: 3, B: 27, C: 73, D: 20}
    assert_equal expected, encryption.shift
  end

  def test_it_downcases_and_splits_input
    encryption = Encryption.new("Hello World!", "02715", "040895")
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]
    assert_equal expected, encryption.split_input
  end

  def test_it_ecrypts_string
    encryption = Encryption.new("Hello World!", "02715", "040895")
    assert_equal "keder ohulw!", encryption.encryption
  end

  def test_it_decrypts_String
    encryption = Encryption.new("keder ohulw!", "02715", "040895")
    assert_equal "hello world!", encryption.decryption
  end

  def test_it_returns_encryption_info
    encryption = Encryption.new("Hello World!", "02715", "040895")
    expected = {encryption: "keder ohulw!", key: "02715", date: "040895"}
    assert_equal expected, encryption.encryption_result
  end

  def test_it_returns_decryption_info
    encryption = Encryption.new("keder ohulw!", "02715", "040895")
    expected = {decryption: "hello world!", key: "02715", date: "040895"}
    assert_equal expected, encryption.decryption_result
  end
end
