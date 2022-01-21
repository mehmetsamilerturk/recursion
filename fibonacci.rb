# frozen_string_literal: true

def fibs(n)
  result = []
  return result if n.zero?
  return [0] if n == 1
  return [0, 1] if n == 2

  if n > 2
    result = [0, 1]
    (n - 2).times do |_i|
      result << result[-2] + result[-1]
    end
  end

  result
end

# p fibs(2)
# p fibs(3)
# p fibs(10)

def fibs_rec(n)
  return [] if n.zero?
  return [0] if n == 1
  return [0, 1] if n == 2

  result = fibs_rec(n - 1)
  result.push(result[n - 2] + result[n - 3])
  result
end

p fibs_rec(10)
