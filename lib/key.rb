class Key

  def generate_key
    '%05d' % rand(0..99999)
  end

  def final_key
    number = generate_key
    final_key = Hash.new(0)
    final_key = { A: number[0..1].to_i,
                  B: number[1..2].to_i,
                  C: number[2..3].to_i,
                  D: number[3..4].to_i
                }
  end
end
