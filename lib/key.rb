require 'date'

class Key

  def generate_key
    '%05d' % rand(0..99999)
  end
end
