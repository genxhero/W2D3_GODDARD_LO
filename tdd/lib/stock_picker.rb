def stock_picker(arr)
  raise ArgumentError if arr.any? {|el| el.is_a?(Integer) == false}
  "Day #{arr.index(arr.max)} is the best day to sell. Day #{arr.index(arr.min)} is the best day to buy!"
end
