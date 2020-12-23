class Luhn
  def self.valid?(string)
    validate?(string.delete(' ')) && convert?(string.scan(/([0-9])/).flatten)
  end

  def self.validate?(string)
    string.size > 1 && !string.match?(/\D/)
  end

  def self.convert?(string)
    (mutate(string).map(&:to_i).sum % 10).zero?
  end

  def self.mutate(array)
    array.length.times do |char|
      array[-(char + 1)].tr!('123456789', '246813579') if char.odd?
    end
    array
  end
end
