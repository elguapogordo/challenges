class Phrase
  def initialize(phrase)
    @phrase = phrase.split('\n').join
    @counts = Hash.new { |hash, key| hash[key] = 0 }
  end

  def word_count
    @phrase.scan(/(?!'.*')\b[\w']+\b/).each do |word|
      @counts[word.downcase] += 1
    end
    @counts
  end
end
