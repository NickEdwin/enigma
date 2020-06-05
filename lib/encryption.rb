require_relative 'key'
require_relative 'offset'
require 'date'

class Encryption

  def initialize
    @key = key
    @date = date
  end

  def key
    key = Key.new("02715").generate_key
  end

  def date

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

  def encryption(string)
    index_counter = 0
    return_string = ""
    split_input(string).each_char do |letter|
      if !alphabet.include?(letter)
        return_string += letter
        index_counter += 1
      elsif index_counter == 0 || index_counter % 4 == 0
        new_index = alphabet[alphabet.index("a") + hash[:A]]
          if new_index > 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif


      puts return_string
      end
    end
  end
end
