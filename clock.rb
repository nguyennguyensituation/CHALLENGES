class Clock
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours = 0, minutes = 0)
    Clock.new(hours, minutes)
  end

  def +(minutes_added)
    minutes_total = @hours * 60 + @minutes + minutes_added
    hours, minutes = minutes_total.divmod(60)
    hours -= 24 until hours < 24
    Clock.at(hours, minutes)
  end

  def -(minutes_subtracted)
    minutes_total = @hours * 60 + @minutes - minutes_subtracted
    hours, minutes = minutes_total.divmod(60)
    hours += 24 until hours >= 0
    Clock.at(hours, minutes)
  end

  def to_s
    '%02d:%02d' % [@hours, @minutes]
  end

  def ==(other)
    self.to_s == other.to_s
  end
end
