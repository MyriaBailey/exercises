def grouper(arr)
  # yield(arr[0], arr[1], arr[2..-1])
  yield(arr)
end

birds = %w(raven finch hawk eagle)

grouper(birds) do |one, two, *three|
  p one
  p two
  p three
end