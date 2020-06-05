require 'date'

class Encrypt

  def key
    '%05d' % rand(0..99999)
  end
end
