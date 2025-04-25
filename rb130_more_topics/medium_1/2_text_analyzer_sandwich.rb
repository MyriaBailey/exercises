class TextAnalyzer
  def process
    text = File.read("sample_text.txt")
    yield(text)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.lines("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.count("\n")} lines" }
analyzer.process { |text| puts "#{text.split.count} words" }