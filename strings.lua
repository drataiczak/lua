a = "The first string"
b = string.gsub(a, "first", "second") -- Sub first with second

print(a)
print(b)

-- Multiline string
page = [[
  <HTML>
  <HEAD>
  <TITLE>An HTML Page</TITLE>
  </HEAD>
  
  <BODY>
    <A HREF="http://www.lua.org">Lua</A>
    "Text between double brackets"
  </BODY>
  </HTML>
]]

io.write(page)

-- Implicity type conversion
print("10" + 1)
print("10 + 1")
print("10.2" * "2")

-- Concatenation and type conversion
print(10 .. 20)

-- Type conversion failures
io.write("Please enter text for an error or a number to get it's double: ")
line = io.read() -- Reads a line
num = tonumber(line) -- Conversion
if num == nil then
  error(line .. " is not a valid number")
else
  print(num * 2)
end

--[[
This does the io.read() first
io.write("Testing concat: " .. io.read())
--]]
