require_relative "enigma"
require_relative "key"
require_relative "offset"
require_relative "encryption"

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
message = handle.read
handle.close

key = ARGV[2]
date = ARGV[3]

decrypted = enigma.decrypt(message, key, date)

writer = File.open(ARGV[1], "w")
writer.write(decrypted[:decryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{key} and the date #{date}."
