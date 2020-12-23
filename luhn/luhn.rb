class Luhn
  def self.valid?(string)
    valid_length?(string) && valid_chars?(string) && convert?(string.scan(/([0-9])/).flatten)
  end

  def self.valid_length?(string)
    string.scan(/([0-9])/).join.size > 1
  end

  def self.valid_chars?(string)
    string == string.scan(/([0-9 ])/).join
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
