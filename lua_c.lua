print("Now we're in Lua")

table = {}

for i = 1, 50 do 
  table[i] = i * 2
end

for key,value in ipairs(table) do
        print(value)
end

