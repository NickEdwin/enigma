require_relative 'key'
require_relative 'offset'
require 'date'

class Encryption
  attr_reader :string

  def initialize(string, key, date)
    @string = string
    @key = key
    @date = date
  end

  def key
    Key.new(@key).generate_key
  end

  def date
    Offset.new(@date).final_offset
  end

  def alphabet
    ("a".."z").to_a << " "
  end

  def shift
    key.merge!(date) { |_, key_value, date_value| key_value + date_value}
  end

  def split_input
    @string.downcase.split(//)
  end
  
  def encryption
    index_counter = 0
    return_string = ""
    split_input.each do |letter|
      if !alphabet.include?(letter)
        return_string += letter
        index_counter += 1
      elsif index_counter == 0 || index_counter % 4 == 0
        new_index = alphabet.index(letter) + shift[:A]
          if new_index > 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 1 || index_counter % 4 == 1
        new_index = alphabet.index(letter) + shift[:B]
          if new_index > 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 2 || index_counter % 4 == 2
        new_index = alphabet.index(letter) + shift[:C]
          if new_index > 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 3 || index_counter % 4 == 3
        new_index = alphabet.index(letter) + shift[:D]
          if new_index > 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
        end
      end
    return_string
  end

  def decryption
    index_counter = 0
    return_string = ""
    split_input.each do |letter|
      if !alphabet.include?(letter)
        return_string += letter
        index_counter += 1
      elsif index_counter == 0 || index_counter % 4 == 0
        new_index = alphabet.index(letter) - shift[:A]
          if new_index < 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 1 || index_counter % 4 == 1
        new_index = alphabet.index(letter) - shift[:B]
          if new_index < 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 2 || index_counter % 4 == 2
        new_index = alphabet.index(letter) - shift[:C]
          if new_index < 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
      elsif index_counter == 3 || index_counter % 4 == 3
        new_index = alphabet.index(letter) - shift[:D]
          if new_index < 27
            new_index = new_index % 27
          end
        return_string += alphabet[new_index]
        index_counter += 1
        end
      end
    return_string
  end

  def encryption_result
    { encryption: encryption,
      key: @key,
      date: @date
    }
   end

   def decryption_result
     { decryption: decryption,
       key: @key,
       date: @date
     }
    end
end
