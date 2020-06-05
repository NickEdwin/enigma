class Key

  def generate_key
    '%05d' % rand(0..99999)
  end

  def final_key
    number = generate_key
    final_key = Hash.new(0)
    final_key = { A: number[0..1],
                  B: number[1..2],
                  C: number[2..3],
                  D: number[3..4]
                }
  end
end
