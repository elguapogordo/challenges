class Acronym
  def self.abbreviate(input)
    input.split(/\W+/).map { |element| element[0].upcase }.join
  end
end
