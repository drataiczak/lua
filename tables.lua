-- Create a table
t1 = {}
t2 = {}
t3 = {}

kvar = "x"

t1[kvar] = 10
t1[20] = "cat"

print(t1["x"])

t1[kvar] = t1["x"] + 1 -- Increment "x"  entry

print(t1[kvar])

t1 = nil -- The table will eventually be gc'd by lua

-- Create 1000 entries in t2
for i = 1,1000 do t2[i] = i * 2 end

t2["x"] = 10

print(t2["x"])
print(t2[10])
print(t2["y"])

-- read 10 lines and store them in a table
for i = 1, 10 do
  t3[i] = io.read()
end

for i, line in ipairs(t3) do
  print(line)
end


