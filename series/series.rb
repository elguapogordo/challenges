class Series
  def initialize(string)
    @string = string
  end

  def slices(size)
    raise ArgumentError unless size <= @string.length

    series = []
    @string.chars.each_cons(size) do |arr|
      series << arr.join
    end
    series
  end
end
