require 'date'

class Offset
  def todays_date
    Time.now.strftime("%d%m%y")
  end

  def generate_offset
    (todays_date.to_i ** 2).to_s.slice(-4..-1)
  end

  def final_offset
    date = generate_offset
    final_offset = Hash.new(0)
    final_offset = { A: date[0..1],
                     B: date[1..2],
                     C: date[2..3],
                     D: date[3..4]
                   }
  end
end
