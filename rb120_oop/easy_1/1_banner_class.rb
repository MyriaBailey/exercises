=begin
GOAL: split a long message into many parts (for separate lines)

I: a message, possibly max width
O: one or more lines of text

D/A
A message is either <= width (no problem, just center it)
or it is > width (needs to be split into new lines then centered on each)

if it is > width:
- create lines array (arr of strings?)

Adding words to lines
- for each word:
  - if line length + space + word length <= width: add word
  - elsif word length > width: [split letters into new lines]
  - else (word too big for this line, can fit on next): add word to a new line


Splitting letters into new lines
- for each letter with index:
  - if there is [room left], or on last idx:
    - add current letter to last line in lines
  - else (still letters left, no more room): add '-' and insert char on new line

How to determine if there's room left:
- if width - line length > 1

---

Once words array is made
- map each line to its formated version
- join with '\n' perhaps?
=end

class Banner
  def initialize(msg, w = nil)
    self.message = msg
    self.width = w
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  attr_accessor :message
  attr_reader :width
  
  def horizontal_rule
    "+-" + ("-" * width) + "-+"
  end

  def empty_line
    "| " + (" " * width) + " |"
  end

  def message_line
    if message.length == width
      "| #{@message} |"
    else
      message_parts.map do |line|
        "| " + line.center(width, ' ') + " |"
      end
    end
  end

  def message_parts
    return message.chars if width == 1
    
    lines = ['']
    words = message.split(' ')

    words.each do |word|
      if lines.last.length + word.length <= width
        lines.last << word + " "
      elsif word.length > width
        add_split_word(word, lines)
      else
        lines << word + ' '
      end
    end

    lines.map(&:strip)
  end

  def add_split_word(word, lines)
    letters = word.chars
    last_idx = letters.length - 1
    lines << '' if lines.last.length >= width - 2

    letters.each_with_index do |letter, idx|
      if width - lines.last.length >= 2 || idx == last_idx
        lines.last << letter
      else
        lines.last << '-'
        lines << letter
      end
    end

    lines.last << ' '
  end

  def width=(w)
    if w.nil? || w < 1
      @width = message.length
    else
      @width = w
    end      
  end
end


banner = Banner.new('To boldly go where no one has gone before.', 2)
puts banner
=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end

banner = Banner.new('', 0)
puts banner
=begin
+--+
|  |
|  |
|  |
+--+
=end