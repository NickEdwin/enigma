require_relative 'key'
require_relative 'offset'
require_relative 'encryption'
require 'date'

class Enigma
  attr_reader :string,
              :key,
              :offset

  def initialize(string, key = '%05d' % rand(0..99999), offset = Time.new.strftime('%d%m%y'))
    @string = string
    @key = key
    @offset = offset
  end
end
