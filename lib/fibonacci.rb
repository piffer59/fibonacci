# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the number of fibonacci numbers
# Space complexity: O(1), only additional space is for a few variables, which are constant.
def fibonacci(n)
  num0 = 0
  num1 = 1
  sum = 0

  if n == 1
    return num1
  elsif n == nil || n < 0
    raise ArgumentError, "n cannot be nil or negative"
  else
    (n - 1).times do
      sum = num0 + num1
      num0 = num1
      num1 = sum
    end
  end
  return sum
end
