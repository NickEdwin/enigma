require 'date'

class Encrypt

  def key
    '%05d' % rand(0..99999)
  end

  def todays_date
    Time.now.strftime("%d%m%Y")
  end

  def offset
    (todays_date.to_i ** 2).to_s.slice(-4..-1)
  end
end
