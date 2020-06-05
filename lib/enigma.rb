require_relative 'key'
require_relative 'offset'

class Enigma
  attr_reader :message,
              :key,
              :date
              
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def alphabet
    ("a".."z").to_a << " "
  end


end
