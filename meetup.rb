class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, ordinal)
    find_ordinals(find_weekdays(weekday), ordinal)
  end

  def find_weekdays(weekday)
    first_of_month = Date.new(@year, @month)
    end_of_month = Date.civil(@year, @month, -1)

    first_of_month.step(end_of_month).with_object([]) do |date, arr|
      case weekday.downcase
      when 'monday' then arr << date if date.monday?
      when 'tuesday' then arr << date if date.tuesday?
      when 'wednesday' then arr << date if date.wednesday?
      when 'thursday' then arr << date if date.thursday?
      when 'friday' then arr << date if date.friday?
      when 'saturday' then arr << date if date.saturday?
      when 'sunday' then arr << date if date.sunday?
      end
    end
  end

  ORDINALS = ['first', 'second', 'third', 'fourth', 'fifth']

  def find_ordinals(arr, ordinal)
    ordinal = ordinal.downcase
    case ordinal
    when 'last' then arr.last
    when 'teenth' then find_teenth(arr)
    else arr[ORDINALS.index(ordinal)]
    end
  end

  def find_teenth(arr)
    arr.select { |date| (13..19).include?(date.day) }.first
  end
end
