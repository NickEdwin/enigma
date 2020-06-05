require 'date'

class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def generate_offset
  (date.to_i ** 2).to_s.slice(-4..-1)
  end

  def final_offset
    { A: generate_offset[0].to_i,
      B: generate_offset[1].to_i,
      C: generate_offset[2].to_i,
      D: generate_offset[3].to_i
    }
  end
end
