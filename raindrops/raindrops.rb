class Raindrops
  def self.convert(num)
    return num.to_s unless (num % 3).zero? || (num % 5).zero? || (num % 7).zero?

    make_sound(num)
  end

  def self.make_sound(num)
    output = ''
    output += 'Pling' if (num % 3).zero?
    output += 'Plang' if (num % 5).zero?
    output += 'Plong' if (num % 7).zero?
    output
  end
end
