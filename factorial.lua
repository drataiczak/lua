-- Defines a function in lua
function factorial(n)
  --[[ Base case and recursion.
  Base case at n == 0,
  otherwise keep recursively calling the function multiplying
  it by itself until we reach the base case. --]]
  if n == 0 then
          return 1
  else
          return n * factorial(n - 1)
  end
end

io.write("Enter a number to calculate it's factorial: ")
input = io.read("*number")

print(factorial(input))
