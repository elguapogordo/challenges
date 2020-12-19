class Isogram
  def self.isogram?(input)
    if input.downcase.chars == input.downcase.chars.uniq
      "Expected true, '#{input}' is an isogram"
    else
      "Expected false, '#{input}' is not an isogram"
    end
  end
end
