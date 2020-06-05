require_relative 'key'
require_relative 'offset'

class Enigma
  attr_reader :key,
              :date

  def initialize
    @key = Key.new.final_key
    @date = Offset.new.final_offset
  end

  def alphabet
    ("a".."z").to_a << " "
  end

  def shift
    @key.merge!(@date) { |_, key_value, date_value| key_value + date_value}
  end

  def split_input(input)
    input.downcase.split(//)
  end
end
