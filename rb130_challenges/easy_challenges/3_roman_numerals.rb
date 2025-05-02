=begin
roman numerals start with the highest digit (say, M for 1000)
smaller numbers subtract from their following letters

for 1990:
- M = 1000
- CM = 100 - 1000 = 900
- XC = 10 - 100 = 90




from test cases:
- class RomanNumeral
- takes a single integer argument
- to_roman public instance method (returns a string)

idea:
- if the 5 gap is more than 3...


If the digit is a 9, subtract 1 (1* 10*)
If 8, it's 5* + 3*
7 then 5* + 2*
6 then 5* + 1*
5 then 5*

4 then 1* - 5*
3 then 1 1 1
2 then 1* 1*
1 then 1*

splitting into digit chunks
- num to string reversed to chars
- map with index, (digit to_i * (10 ** 1))
- reverse again, high to low. (1000, 900, 90, 0) for 1990

Does num already exist? toss in results string and move on
else: toss in a < if tree for which letter is closest
- acquire keystone letter (adding or subtracting from)

4(4)8
take keystone letter ('L':50) ('C':100)
if num_chunk is less than:
  - prepend previous NON-5 keystone. done
else (num_chunk larger than)
  - append current NON-5 keystone ? times

how to find ideal non-5 keystone:
- number of digits for current chunk (90 -> 2 digits)
- return letter of (10 ** digits - 1)

---

XXXI = 31
XXX = 30
XL = 40

LX = 60
LXXX = 80
XC = 90

CX = 110
CCC = 300
CD = 400
DC = 600
=end

class RomanNumeral
  NUM_TO_NUMERAL = {
    0 => '',
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  def initialize(n)
    @decimal = n
  end

  def to_roman
    return NUM_TO_NUMERAL[decimal] if easy_conversion?(decimal)
    numeral = ''

    digit_chunks.each do |chunk|
      current_numeral = ''
      keystone = closest_numeral_value(chunk)
      step = closest_non_5_value(chunk)
      step_numeral = NUM_TO_NUMERAL[step]

      current_numeral << NUM_TO_NUMERAL[keystone]

      if chunk < keystone
        current_numeral.prepend(step_numeral)
      elsif chunk > keystone
        repeat_steps = (chunk - keystone) / step
        current_numeral << (step_numeral * repeat_steps)
      end
      
      numeral << current_numeral
    end
    
    numeral
  end

  private

  attr_reader :decimal

  def easy_conversion?(num)
    NUM_TO_NUMERAL.include?(num)
  end

  def digit_chunks
    digits = decimal.to_s.reverse.chars

    chunks = digits.map.with_index do |digit, idx|
      digit.to_i * (10 ** idx)
    end

    chunks.reverse
  end

  def closest_numeral_value(num)
    num = num.to_i
    if num >= 900 then 1000 # 'M'
    elsif num >= 400 then 500 # 'D'
    elsif num >= 90 then 100 # 'C'
    elsif num >= 40 then 50 # 'L'
    elsif num >= 9 then 10 # 'X'
    elsif num >= 4 then 5 # 'V'
    elsif num >= 1 then 1 # 'I'
    else 0
    end
  end

  def closest_non_5_value(num)
    num_digits = num.to_s.length
    value = 10 ** (num_digits - 1)

    # NUM_TO_NUMERAL[value]
  end
end


# NUM_TO_NUMERAL_OLD = {
#   1: 'I',
#   2: 'II',
#   3: 'III',
#   4: 'IV',
#   5: 'V',
#   6: 'VI',
#   7: 'VII',
#   8: 'VIII',
#   9: 'IX',
#   10: 'X',
#   50: 'L',
#   100: 'C',
#   500: 'D',
#   1000: 'M'
# }