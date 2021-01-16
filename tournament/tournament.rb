class Tournament
  def self.tally(input)
    banner + standings(input).to_s
  end

  def self.banner
    "Team                           | MP |  W |  D |  L |  P\n"
  end

  def self.standings(input)
    # require 'pry'; binding.pry
  end
end
