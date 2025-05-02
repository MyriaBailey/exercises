=begin
Create a clock independent of date

- Add/subtract minutes from the time represented by a Clock object
- Do not mutate the Clock, create new Clock object
- Two clock objects of same time == each other
- No built-in time or date functionality

From test cases:
- class Clock
- class method `at` that takes an hour, and optional minute
- `at` creates a Clock object and returns it
- `to_s` instance method
- 24 hr time
- clock wraps backwards too
- arguments are in numbers
- never adding/subtracting clocks together, only minutes from clock

Adding:
given_hours, given_minutes = m divmod 60
extra_hours, new_minutes = (minute + given_minutes) divmod 60
new_hours = (hour + given hours + extra hours) % 24
create object from new hours/min
--- wait hold on

new_hours, new_minutes = (minutes + m).divmod 60
new_hours = (new_hours + hours) % 24
create new clock

Subtracting
divmod still works with subtracting! if goes below 00 min,
will wrap around to [-1, 59]
new hours = hours + negative divisor % 24 still
% on a negative number will also wrap around!

=end

class Clock
  def initialize(h, m)
    @hours = h
    @minutes = m
  end

  def self.at(h, m = 0)
    Clock.new(h, m)
  end

  def to_s
    hour_hand, minute_hand = hours.to_s, minutes.to_s

    hour_hand.prepend('0') if hour_hand.length == 1
    minute_hand.prepend('0') if minute_hand.length == 1

    "#{hour_hand}:#{minute_hand}"
  end

  def ==(other)
    [hours, minutes] == [other.hours, other.minutes]
  end

  def +(m)
    new_hours, new_minutes = (minutes + m).divmod(60)
    new_hours = (new_hours + hours) % 24

    Clock.new(new_hours, new_minutes)
  end

  def -(m)
    new_hours, new_minutes = (minutes - m).divmod(60)
    new_hours = (new_hours + hours) % 24

    Clock.new(new_hours, new_minutes)
  end

  protected

  attr_reader :hours, :minutes
end