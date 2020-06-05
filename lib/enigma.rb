require_relative 'key'
require_relative 'offset'

class Enigma
  attr_reader :message,
              :key,
              :date

  def initialize(message, key = "key", date = "date")
    @message = message
    @key = Key.new.final_key
    @date = Offset.new.final_offset
  end

  def alphabet
    ("a".."z").to_a << " "
  end


end
