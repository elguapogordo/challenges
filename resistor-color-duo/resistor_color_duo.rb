class ResistorColorDuo
  COLOR_MAP = [
    'black', 'brown', 'red', 'orange', 'yellow',
    'green', 'blue', 'violet', 'grey', 'white'
  ]

  def self.value(colors)
    colors.first(2).map { |color| COLOR_MAP.index(color) }.join.to_i
  end
end
