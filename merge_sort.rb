# frozen_string_literal: true

arr = [3, 6, 1, 2, 5, 4, 8, 7]

def merge_sort(arr)
  return arr if arr.size <= 1

  left_side = []
  right_side = []

  arr.each_with_index do |num, index|
    if index < arr.size / 2
      left_side.push(num)
    else
      right_side.push(num)
    end
  end

  left_side = merge_sort(left_side)
  right_side = merge_sort(right_side)

  result = []

  while !left_side.empty? && !right_side.empty?
    if left_side.first <= right_side.first
      result << left_side.first
      left_side = left_side[1..-1]
    else
      result << right_side.first
      right_side = right_side[1..-1]
    end
  end

  until left_side.empty?
    result << left_side.first
    left_side = left_side[1..-1]
  end

  until right_side.empty?
    result << right_side.first
    right_side = right_side[1..-1]
  end

  result
end

p merge_sort(arr)
