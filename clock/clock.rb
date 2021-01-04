class Clock
  attr_reader :minutes, :hours

  def initialize(input)
    hour_minutes = (input[:minute] || 0).divmod(60)
    @minutes = hour_minutes[1]
    @hours = ((input[:hour] || 0) + hour_minutes[0]) % 24
  end

  def to_s
    format('%<hours>02d', hours: @hours) + ':' + format('%<minutes>02d', minutes: @minutes)
  end

  def +(other)
    hour_minutes = (@minutes + other.minutes).divmod(60)
    @minutes = hour_minutes[1]
    @hours = (@hours + other.hours + hour_minutes[0]) % 24
    to_s
  end

  def -(other)
    hour_minutes = (@minutes - other.minutes).divmod(60)
    @minutes = hour_minutes[1]
    @hours = (@hours - other.hours + hour_minutes[0]) % 24
    to_s
  end

  def ==(other)
    to_s == other.to_s
  end
end
