require 'date'

class Encrypt

  def generate_key
    '%05d' % rand(0..99999)
  end

  def todays_date
    require"pry"; binding.pry
    Time.now.strftime("%d%m%y")
  end

  def offset
    (todays_date.to_i ** 2).to_s.slice(-4..-1)
  end
end
