class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def generate_key
    { A: key[0..1].to_i,
      B: key[1..2].to_i,
      C: key[2..3].to_i,
      D: key[3..4].to_i
    }
  end
end
