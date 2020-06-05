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

  def shift(key = @key, date = @date)
    key.merge!(date) { |_, key_value, date_value| key_value + date_value}
  end

  def split_input(input)
    input.downcase.split(//)
  end

  def encryption(string)
    index_counter = 0
    return_string = []
    split_input(string).each do |letter|
      if !alphabet.include?(letter)
        return_string << letter
        index_counter += 1
      elsif
        require"pry"; binding.pry
      alphabet.include?(letter) && index_counter == 0 || index_counter % 4 == 0
        letter.rotate

      end
    end
    return_string.join
  end
end

# def generate_key
#   '%05d' % rand(0..99999)
# end
