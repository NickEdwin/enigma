require_relative 'key'
require_relative 'offset'
require_relative 'encryption'
require 'date'

class Enigma

  def encrypt(message, key = rand(0..99999).to_s.ljust(5, '0'), date = Time.new.strftime("%d%m%y"))
    message = Encryption.new(message, key, date)
    message.encryption_result
  end

  def decrypt(message, key = rand(0..99999).to_s.ljust(5, '0'), date = Time.new.strftime("%d%m%y"))
    message = Encryption.new(message, key, date)
    message.decryption_result
  end
end
